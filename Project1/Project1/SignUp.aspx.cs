using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using MySql.Data.MySqlClient;

namespace Project1
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            // Retrieve data entered by the user in the form fields
            string username = UsernameTextBox.Text.Trim();
            string email = EmailTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            string connectionString = "server=localhost;Database=mysportingclub;user=root;password=salma123";

            // Validate that all fields are filled
            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(password))
            {
                // Show an alert message if fields are missing
                Response.Write("<script>alert('Please fill in all fields.');</script>");
                return;
            }

            // Validate email format
            if (!IsValidEmail(email))
            {
                Response.Write("<script>alert('Invalid email format. Please enter a valid email address.');</script>");
                return;
            }

            // Validate password complexity
            if (!IsValidPassword(password))
            {
                Response.Write("<script>alert('Password must be at least 8 characters long and include an uppercase letter, a lowercase letter, a number, and a special character.');</script>");
                return;
            }

            // Save the user data to the database
            bool isSaved = SaveUserData(username, email, password, connectionString);

            if (isSaved)
            {
                // Show a success message and redirect to Welcome page
                Response.Write("<script>alert('Sign Up Successful! Welcome to the Sporting Club.');</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                // Show an error message if data saving fails
                Response.Write("<script>alert('An error occurred during sign up. Please try again later.');</script>");
            }
        }

        private bool SaveUserData(string username, string email, string password, string connectionString)
        {
            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    // SQL query to insert user data into the database
                    string query = "INSERT INTO Users (username, email, password) VALUES (@username, @email, @password)";

                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        // Add parameters to the query to prevent SQL injection
                        command.Parameters.AddWithValue("@username", username);
                        command.Parameters.AddWithValue("@email", email);
                        command.Parameters.AddWithValue("@password", password);

                        // Execute the query
                        int rowsAffected = command.ExecuteNonQuery();
                        return rowsAffected > 0; // Return true if a row was inserted successfully
                    }
                }
            }
            catch (MySqlException ex)
            {
                // Log the exception (you can replace this with your logging logic)
                Response.Write($"<script>alert('Database error: {ex.Message}');</script>");
                return false;
            }
            catch (Exception ex)
            {
                // Log the exception
                Response.Write($"<script>alert('Unexpected error: {ex.Message}');</script>");
                return false;
            }
        }

        private bool IsValidEmail(string email)
        {
            // Regular expression for validating email format
            string emailPattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
            return Regex.IsMatch(email, emailPattern);
        }

        private bool IsValidPassword(string password)
        {
            // Ensure password is at least 8 characters long
            if (password.Length < 8)
                return false;

            // Regular expression to ensure password contains uppercase, lowercase, digit, and special character
            string passwordPattern = @"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$";
            return Regex.IsMatch(password, passwordPattern);
        }
    }
}

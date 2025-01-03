using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Project1
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Retrieve form data
            string name = NameTextBox.Text.Trim();
            string email = EmailTextBox.Text.Trim();
            string message = MessageTextBox.Text.Trim();

            // Simple validation
            if (string.IsNullOrEmpty(name) || string.IsNullOrEmpty(email) || string.IsNullOrEmpty(message))
            {
                // Alert user if any field is empty
                Response.Write("<script>alert('Please fill out all fields.');</script>");
                return;
            }

            // Insert the message into the database
            bool isMessageStored = StoreMessageInDatabase(name, email, message);

            if (isMessageStored)
            {
                Response.Write("<script>alert('Thank you for contacting us! We will get back to you soon.');</script>");
            }
            else
            {
                Response.Write("<script>alert('An error occurred while sending your message. Please try again later.');</script>");
            }
            NameTextBox.Text = string.Empty;
            EmailTextBox.Text = string.Empty;
            MessageTextBox.Text = string.Empty;
        }

        private bool StoreMessageInDatabase(string name, string email, string message)
        {
            // Database connection string (replace with your actual credentials)
            string connectionString = "server=localhost;database=mysportingclub;user=root;password=salma123";

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    // SQL query to insert data into the Contact table
                    string query = "INSERT INTO mysportingclub.Contacts (Name, Email, Message) VALUES (@Name, @Email, @Message)";

                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        // Add parameters to prevent SQL injection
                        command.Parameters.AddWithValue("@Name", name);
                        command.Parameters.AddWithValue("@Email", email);
                        command.Parameters.AddWithValue("@Message", message);

                        // Execute the query
                        int rowsAffected = command.ExecuteNonQuery();

                        // Return true if the message was inserted successfully
                        return rowsAffected > 0;
                    }
                }
            }
            catch (MySqlException ex)
            {
                // Log the error (replace with your logging mechanism)
                Response.Write($"<script>alert('Database error: {ex.Message}');</script>");
                return false;
            }
            catch (Exception ex)
            {
                // Log any other errors
                Response.Write($"<script>alert('Unexpected error: {ex.Message}');</script>");
                return false;
            }
        }
    }
}
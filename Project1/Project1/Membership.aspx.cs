using System;
using MySql.Data.MySqlClient;

namespace Project1
{
    public partial class Membership : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            string username = UsernameTextBox.Text.Trim();
            string email = EmailTextBox.Text.Trim();
            string membershipType = MembershipTypeDropDown.SelectedValue;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(email))
            {
                // Display an error message if required fields are empty
                Response.Write("<script>alert('Please fill in all fields.');</script>");
                return;
            }

            string connectionString = "server=localhost;database=mysportingclub;user=root;password=salma123";

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    // Fetch userId from the Users table
                    string fetchUserQuery = "SELECT userId FROM Users WHERE username = @username AND email = @Email";
                    int userId;
                    using (MySqlCommand userCommand = new MySqlCommand(fetchUserQuery, connection))
                    {
                        userCommand.Parameters.AddWithValue("@username", username);
                        userCommand.Parameters.AddWithValue("@Email", email);

                        object userResult = userCommand.ExecuteScalar();
                        if (userResult == null)
                        {
                            Response.Write("<script>alert('User not found. Please check your username and email.');</script>");
                            return;
                        }
                        userId = Convert.ToInt32(userResult);
                    }

                    // Fetch membershipTypeId from the MembershipTypes table
                    string fetchMembershipQuery = "SELECT membershipTypeId FROM MembershipTypes WHERE membershipName = @membershipName";
                    int membershipTypeId;
                    using (MySqlCommand membershipCommand = new MySqlCommand(fetchMembershipQuery, connection))
                    {
                        membershipCommand.Parameters.AddWithValue("@membershipName", membershipType);

                        object membershipResult = membershipCommand.ExecuteScalar();
                        if (membershipResult == null)
                        {
                            Response.Write("<script>alert('Membership type not found.');</script>");
                            return;
                        }
                        membershipTypeId = Convert.ToInt32(membershipResult);
                    }

                    // Insert into UserMemberships table
                    string insertMembershipQuery = @"
                        INSERT INTO UserMemberships (userId, membershipTypeId, startDate, endDate) 
                        VALUES (@userId, @membershipTypeId, @startDate, @endDate)";
                    using (MySqlCommand insertCommand = new MySqlCommand(insertMembershipQuery, connection))
                    {
                        insertCommand.Parameters.AddWithValue("@userId", userId);
                        insertCommand.Parameters.AddWithValue("@membershipTypeId", membershipTypeId);
                        insertCommand.Parameters.AddWithValue("@startDate", DateTime.Now);
                        insertCommand.Parameters.AddWithValue("@endDate", DateTime.Now.AddYears(1)); // 1-year membership

                        insertCommand.ExecuteNonQuery();
                    }

                    // Success message
                    Response.Write("<script>alert('Membership successfully added!');</script>");
                }
                UsernameTextBox.Text = string.Empty;
                EmailTextBox.Text = string.Empty;
                MembershipTypeDropDown.SelectedIndex = 0; // Reset to the first item in the dropdown
            }
            catch (Exception ex)
            {
                // Handle exceptions and show an error message
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }
    }
}

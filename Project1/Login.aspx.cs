using System;
using System.Security.Cryptography;
using System.Text;
using MySql.Data.MySqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // Get username and password from text boxes
            string username = UsernameTextBox.Text;
            string password = PasswordTextBox.Text;
            string connection = "server=localhost;Database=mysportingclub;user=root;password=salma123";

            try
            {
                using (MySqlConnection connectionString = new MySqlConnection(connection))
                {
                    connectionString.Open();
                    string myquery = "SELECT COUNT(*) FROM Users WHERE username=@username AND password=@password";

                    using (MySqlCommand command = new MySqlCommand(myquery, connectionString))
                    {
                        command.Parameters.AddWithValue("@username", username);
                        command.Parameters.AddWithValue("@password", password);


                        int usercount=Convert.ToInt32(command.ExecuteScalar());
                        if (usercount > 0)
                        {
                            Response.Redirect("Welcome.aspx");
                        }
                        else
                        {
                            Response.Write("<script>alert('Invalid email and password');</script>");
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }

        }


    }
}
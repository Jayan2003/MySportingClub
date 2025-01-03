using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace Project1
{
    public partial class Events : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SoccerEventButton_Click(object sender, EventArgs e)
        {

        }

        protected void SwimmingEventButton_Click(object sender, EventArgs e)
        {

        }

        protected void TennisEventButton_Click(object sender, EventArgs e)
        {

        }

        protected void SubmitRegistration_Click(object sender, EventArgs e)
        {
            // Logic for Soccer Event Registration
            string connectionString = "server=localhost;Database=mysportingclub;user=root;password=salma123";
            string u = username1.Text;
            string em = email.Text;
            string ename = Eventname.Text;
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                try
                {
                    connection.Open();

                    // SQL query to insert the registration record
                    string query1 = "SELECT userid FROM mysportingclub.Users WHERE email=@em";
                    string query2 = "INSERT INTO mysportingclub.EventRegistrations(userId,eventId) VALUES(@ID,@Event)";
                    string query3 = "SELECT eventId FROM mysportingclub.Events WHERE eventName=@ename";
                    string queryCheck = "SELECT COUNT(*) FROM mysportingclub.EventRegistrations WHERE userId=@ID AND eventId=@Event";

                    using (MySqlCommand command = new MySqlCommand(query1, connection))
                    {
                        command.Parameters.AddWithValue("@em", em);
                        object id = command.ExecuteScalar();
                        if (id == null)
                        {
                            Response.Write("<script>alert('error!');</script>");
                        }
                        else
                        {
                            using (MySqlCommand command2 = new MySqlCommand(query3, connection))
                            {
                                command2.Parameters.AddWithValue("@ename", ename);
                                object id2 = command2.ExecuteScalar();
                                if (id2 == null)
                                {
                                    Response.Write("<script>alert('error!');</script>");
                                }
                                else
                                {
                                    // Check if the user is already registered for the event
                                    using (MySqlCommand checkCommand = new MySqlCommand(queryCheck, connection))
                                    {
                                        checkCommand.Parameters.AddWithValue("@ID", id);
                                        checkCommand.Parameters.AddWithValue("@Event", id2);
                                        int registrationCount = Convert.ToInt32(checkCommand.ExecuteScalar());

                                        if (registrationCount > 0)
                                        {
                                            Response.Write("<script>alert('You are already registered for this event.');</script>");
                                            username1.Text = string.Empty;
                                            email.Text = string.Empty;
                                            Eventname.Text = string.Empty; // Reset to the first item in the dropdown
                                            return;
                                        }
                                    }

                                    using (MySqlCommand command1 = new MySqlCommand(query2, connection))
                                    {
                                        command1.Parameters.AddWithValue("@ID", id);
                                        command1.Parameters.AddWithValue("@Event", id2);
                                        command1.ExecuteNonQuery();
                                    }
                                    // Success message
                                    Response.Write($"<script>alert('Successfully registered for the event (Event ID: {ename}).');</script>");
                                }
                            }
                        }
                    }
                    username1.Text = string.Empty;
                    email.Text = string.Empty;
                    Eventname.Text = string.Empty; // Reset to the first item in the dropdown
                }
                catch (MySqlException ex)
                {
                    // Handle database errors
                    Response.Write($"<script>alert('Database error: {ex.Message}');</script>");
                }
                catch (Exception ex)
                {
                    // Handle general errors
                    Response.Write($"<script>alert('An error occurred: {ex.Message}');</script>");
                }
            }
        }
    }
}

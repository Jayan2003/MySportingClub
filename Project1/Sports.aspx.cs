using System;
using System.Web.UI;
using MySql.Data.MySqlClient;
using System.Web.UI.WebControls; // Add this namespace


namespace Project1
{
    public partial class Sports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Handle initial page load logic here
        }

        protected void ShowDescription_Click(object sender, EventArgs e)
        {
            // Get the sport name from the button's CommandArgument
            //sender: Refers to the object (in this case, the button) that triggered the ShowDescription_Click event.
            //(Button): This is a type cast, converting sender (which is of type object) into a Button so that you can access its specific properties like CommandArgument.
            var button = (Button)sender;
            string sportName = button.CommandArgument;

            // Fetch sport details from the database
            FetchSportDetails(sportName);
        }

        private void FetchSportDetails(string sportName)
        {
            // Connection string to connect to the MySQL database
            string connectionString = "server=localhost;database=mysportingclub;user=root;password=salma123";

            try
            {
                // Using statement ensures the database connection is properly closed and disposed of after use
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open(); // Open the connection to the MySQL database

                    // SQL query to fetch sport details
                    string query="SELECT sportName, description FROM mysportingclub.Sports WHERE sportName = @sportName";

                    // Create a MySqlCommand object to execute the query
                    using (MySqlCommand command = new MySqlCommand(query, connection))
                    {
                        command.Parameters.AddWithValue("@sportName", sportName);

                        using (MySqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                // Update labels with sport details
                                SportTitleLabel.Text = reader["sportName"].ToString() + ": ";
                                SportDescriptionLabel.Text = reader["description"].ToString();
                            }
                            else
                            {
                                SportTitleLabel.Text = "Sport not found.";
                                SportDescriptionLabel.Text = "";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                SportTitleLabel.Text = "Error fetching sport details.";
                SportDescriptionLabel.Text = ex.Message;
            }
        }
    }
}

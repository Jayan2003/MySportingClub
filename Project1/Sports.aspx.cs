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
            var button = (Button)sender;
            string sportName = button.CommandArgument;

            // Fetch sport details from the database
            FetchSportDetails(sportName);
        }

        private void FetchSportDetails(string sportName)
        {
            string connectionString = "server=localhost;database=mysportingclub;user=root;password=salma123";

            try
            {
                using (MySqlConnection connection = new MySqlConnection(connectionString))
                {
                    connection.Open();

                    // SQL query to fetch sport details
                    string query="SELECT sportName, description FROM mysportingclub.Sports WHERE sportName = @sportName";
                    ;

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

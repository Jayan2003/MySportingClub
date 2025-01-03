using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Add any initialization logic here
        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {
            // Redirect to the Sign Up page
            Response.Redirect("SignUp.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            // Redirect to the Login page
            Response.Redirect("Login.aspx");
        }
    }
}

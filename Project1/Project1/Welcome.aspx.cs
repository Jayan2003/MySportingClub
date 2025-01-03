using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ShowSports_Click(object sender, EventArgs e)
        {
            // Redirect to the Show Sports page
            Response.Redirect("Sports.aspx");
        }

        protected void ShowEvents_Click(object sender, EventArgs e)
        {
            // Redirect to the Show Events page
            Response.Redirect("Events.aspx");
        }

        protected void Membership_Click(object sender, EventArgs e)
        {
            // Redirect to the Membership page
            Response.Redirect("Membership.aspx");
        }

        protected void ContactUs_Click(object sender, EventArgs e)
        {
            // Redirect to the Contact Us page
            Response.Redirect("ContactUs.aspx");
        }
    }
}
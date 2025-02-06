using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class admin : System.Web.UI.Page
    {
        public string hits;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve the value of "hits" from the Application object and convert it to a string
            hits = Application["hits"].ToString();

            // Check if the "UserCookie" exists in the request cookies
            if (Request.Cookies["UserCookie"] != null)
            {
                // If the cookie exists, assign its value to the "email" session variable
                Session["email"] = Request.Cookies["UserCookie"].Value;
            }
            else
            {
                // If the cookie doesn't exist, set the "email" session variable to null
                Session["email"] = null;
            }

            // Check if the "email" session variable is null or not equal to "samy.chame188@gmail.com"
            if (Session["email"] == null || !Session["email"].Equals("samy.chame188@gmail.com"))
            {
                // If the conditions are met, redirect the user to the "login.aspx" page
                Response.Redirect("login.aspx");
            }

        }
    }
}
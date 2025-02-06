using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class showTable : System.Web.UI.Page
    {
    public string tbl;
        protected void Page_Load(object sender, EventArgs e)
        {
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

            // Create a SQL query to select all rows from the "Users" table
            string query = "select * from Users";

            // Retrieve the data from the "Users" table and store it in the "tbl" variable
            tbl = MyAdoHelper.printDataTable(@"Database1.mdf", query);

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class update : System.Web.UI.Page
    {
        public string errormsg;

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

            // Check if the "submit" form field exists in the request
            if (Request.Form["submit"] != null)
            {
                // Retrieve the values of the "email", "options", and "data" form fields
                string email = Request.Form["email"];
                string choice = Request.Form["options"];
                string data = Request.Form["data"];

                // Create a SQL query to find a matching email in the "Users" table
                string findmail = "select * from Users where email = '" + email + "'";

                // Check if the email exists in the "Users" table
                bool existmail = false;
                try
                {
                    existmail = MyAdoHelper.IsExist(@"Database1.mdf", findmail);
                }
                catch
                {
                    errormsg = "There was a problem,try later";
                }

                if (!existmail)
                {
                    // If the email doesn't exist, set the error message to "User not found"
                    errormsg = "User not found";
                }
                else
                {
                    try
                    {
                        // Create a SQL query to update the specified column with the provided data for the matching email in the "Users" table
                        string query = "update Users set " + choice + " = N'" + data + "' where email='" + email + "'";

                        // Execute the update query and get the number of affected rows
                        int r = MyAdoHelper.RowsAffected(@"Database1.mdf", query);

                        if (r == 0)
                        {
                            // If no rows were affected, set the error message to "There was a problem, try again later"
                            errormsg = "There was a problem, try again later";
                        }
                    }
                    catch
                    {
                        // If an exception occurs, set the error message to "There was a problem, try again later"
                        errormsg = "There was a problem, try again later";
                    }
                }
            }

        }
    }
}
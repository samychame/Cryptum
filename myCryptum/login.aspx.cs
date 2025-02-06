using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        public string errormsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the "submit" form field exists in the request
            if (Request.Form["submit"] != null)
            {
                // Get the values of the "email" and "password" form fields
                string email = Request.Form["email"];
                string pswd = Request.Form["password"];

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
                    errormsg = "There was a problem,try later.";
                }

                // Check if the email doesn't exist
                if (!existmail)
                {
                    // Set the error message to "User not found"
                    errormsg = "User not found";
                }
                else
                {
                    // Create a SQL query to find a matching email and password in the "Users" table
                    string mysql = "select * from Users where email = '" + email + "' and pswd = '" + pswd + "'";

                    // Check if the email and password exist in the "Users" table
                    bool isexist = MyAdoHelper.IsExist(@"Database1.mdf", mysql);

                    if (isexist)
                    {
                        // If the email and password match, create a new cookie and set its value to the email
                        HttpCookie emailCookie = new HttpCookie("UserCookie");
                        emailCookie.Value = email;
                        emailCookie.Expires = DateTime.Now.AddDays(7);
                        Response.Cookies.Add(emailCookie);

                        // Redirect the user to the "main.aspx" page
                        Response.Redirect("main.aspx");
                    }
                    else
                    {
                        // If the password is not correct, set the error message to "Password not correct"
                        errormsg = "Password not correct";
                    }
                }
            }

        }
    }
}
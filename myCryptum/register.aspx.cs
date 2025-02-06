using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class register : System.Web.UI.Page
    {
        public string errormsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the submit button was clicked
            if (Request.Form["submit"] != null)
            {
                // Retrieve form data
                string fName = Request.Form["fName"];
                string lName = Request.Form["lName"];
                string email = Request.Form["email"];
                string gender = Request.Form["gender"];
                int year = Int16.Parse(Request.Form["year"]);
                string pswd = Request.Form["password"];

                // Check if email already exists in the database
                string check = "select * from Users where email = '" + email + "'";
                bool existmail = false;
                try {
                     existmail = MyAdoHelper.IsExist(@"Database1.mdf", check);
                }
                catch
                {
                    errormsg = "there was a problem try later";
                }
                // Store the email in session
                Session["email"] = email;

                if (existmail)
                {
                    // Display error message if email is already registered
                    errormsg = "Email is already registered";
                }
                else
                {
                    // Insert user data into the database
                    string mysql = "insert into Users values(N'" + email + "',N'" + pswd + "',N'" + fName + "',N'" + lName + "'," + year + ",'" + gender + "')";
                    try
                    {
                        // Execute the SQL query and check the number of affected rows
                        int ans = MyAdoHelper.RowsAffected(@"Database1.mdf", mysql);

                        if (ans > 0)
                        {
                            // Create a cookie to store the email and set its expiration date
                            HttpCookie emailCookie = new HttpCookie("UserCookie");
                            emailCookie.Value = email;
                            emailCookie.Expires = DateTime.Now.AddDays(7);

                            // Add the cookie to the response
                            Response.Cookies.Add(emailCookie);

                            // Redirect to the main.aspx page
                            Response.Redirect("main.aspx");
                        }
                        else
                        {
                            // Display error message if registration failed
                            errormsg = "You couldn't be registered. Please try again later.";
                        }
                    }
                    catch
                    {
                        // Display error message if an exception occurred during registration
                        errormsg = "You couldn't be registered. Please try again later.";
                    }
                }
            }

        }
    }
}
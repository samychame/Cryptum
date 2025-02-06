using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class delete : System.Web.UI.Page
    {
        public string errormsg;
        public int deleted;
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

            // Initialize the error message variable
            errormsg = "";

            // Check if the "submit" form field exists in the request
            if (Request.Form["submit"] != null)
            {
                // Get the value of the "email" form field
                string email = Request.Form["email"];

                // Create a SQL query to find a matching email in the "Users" table
                string findmail = "select * from Users where email = '" + email + "'";

                // Check if the email exists in the "Users" table
                bool existmail = false;
                try
                {
                    existmail = MyAdoHelper.IsExist(@"Database1.mdf", findmail);
                }
                catch{
                    errormsg = "There was a problem, try later";
                }

                // Check if the email doesn't exist or is equal to "samy.chame188@gmail.com"
                if (!existmail || email.Equals("samy.chame188@gmail.com"))
                {
                    if (!existmail)
                    {
                        // If the email doesn't exist, set the error message to "User not found"
                        errormsg = "User not found";
                    }
                    else
                    {
                        // If the email matches the administrator's email, set the error message to "you can't delete the administrator"
                        errormsg = "you can't delete the administrator";
                    }
                }
                else
                {
                    try
                    {
                        // Create a SQL query to delete the user with the given email from the "Users" table
                        string query = "delete from Users where email = '" + email + "'";

                        // Execute the query and get the number of affected rows
                        int p = MyAdoHelper.RowsAffected(@"Database1.mdf", query);


                        if (p == 0)
                        {
                            // If no rows were affected, set the error message to "There was a problem, try later"
                            errormsg = "There was a problem, try later";
                        }
                        else
                        {
                           
                            Application.Lock();
                            if (Application["deleted"] != null)
                            {
                                deleted = Int16.Parse(Application["deleted"].ToString());
                                Application["deleted"] = deleted + 1;
                            }
                            else
                            {
                                Application["deleted"] = "0";
                            }
                            Application.UnLock();
                        }
                    }
                    catch
                    {
                        // If an exception occurred, set the error message to "There was a problem, try later"
                        errormsg = "There was a problem, try later";
                    }
                }
            }

        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class cryptos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Check if the UserCookie exists in the request cookies
            if (Request.Cookies["UserCookie"] != null)
            {
                // If UserCookie exists, retrieve the value and store it in the session as "email"
                Session["email"] = Request.Cookies["UserCookie"].Value;
            }
            else
            {
                // If UserCookie doesn't exist, set the session "email" to null
                Session["email"] = null;
            }

            // Check if the "email" session variable is null
            if (Session["email"] == null)
            {
                // If "email" session variable is null, redirect the user to the login.aspx page
                Response.Redirect("login.aspx");
            }

        }
    }
}
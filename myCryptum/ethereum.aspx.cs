using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //unreachable page for non users

            //check cookies
            if (Request.Cookies["UserCookie"] != null)
            {
                Session["email"] = Request.Cookies["UserCookie"].Value;
            }
            else
            {
                Session["email"] = null;
            }
            //if users is not logged in redirect to login page
            if (Session["email"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}
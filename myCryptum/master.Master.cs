using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class master : System.Web.UI.MasterPage
    {
        public string admin;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["UserCookie"] != null)
            {
                Session["email"] = Request.Cookies["UserCookie"].Value;
            }
            else
            {
                Session["email"] = null;
            }
            if (Session["email"] != null && Session["email"].Equals("samy.chame188@gmail.com"))
            {
                admin = "<li><a href = 'admin.aspx' ></a >Admin</li>";
            }
        }
    }
}
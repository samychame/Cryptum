using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class adminQuery : System.Web.UI.Page
    {
        public int deleted;
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
            //check if is admin
            if (Session["email"] == null || !Session["email"].Equals("samy.chame188@gmail.com"))
            {
                Response.Redirect("login.aspx");
            }

            if (Application["deleted"] == null)
            {
                Application["deleted"] = "0";
            }
            deleted = Int16.Parse(Application["deleted"].ToString()); ;
            
        }
    }
}
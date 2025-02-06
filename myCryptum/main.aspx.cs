using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myCryptum
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public int hits;
        protected void Page_Load(object sender, EventArgs e)
        {
            // Store the current date in Application state
            Application["currentDate"] = DateTime.Now.Date;
            // Get the stored current date from Application state
            var currentDate = (DateTime)Application["currentDate"];

            // Check if the current date has changed since the last request
            if (DateTime.Now.Date > currentDate)
            {
                // Reset the hits value to null
                Application["hits"] = null;
                hits = 0;

                // Update the stored current date in Application state
                Application["currentDate"] = DateTime.Now.Date;
            }
            Application.Lock();
            if (Application["hits"] != null)
            {
                hits = Int16.Parse(Application["hits"].ToString());
                Application["hits"] = hits + 1;
            }
            else
            {
                Application["hits"] = "0";
            }
            Application.UnLock();
        }
    }
}
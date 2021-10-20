using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDay17
{
    public partial class ThreeMethods : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRR_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
            //Response.Redirect("https://us02web.zoom.us/postattendee?mn=PHcT5_fJqlREltWEwSeqA3hNgn899mVlytUT.5dUbyQcRUkOWhLvZ&id=46");
        }

        protected void BtnST_Click(object sender, EventArgs e)
        {
           Server.Transfer("Home.aspx");
            
        }

        protected void BtnSE_Click(object sender, EventArgs e)
        {
            Server.Execute("Home.aspx");
        }
    }
}
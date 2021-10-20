using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppSecure
{
    public partial class LogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string userName = "sam1256";
            string userPwd = "sam@1256@1256";
            if ((txtUserName.Text == userName) && (txtUserPwd.Text == userPwd))
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, true);
            }
            else 
            {
                lblMsg.Text = "Either User Name or Password incorrect!!!";

            }
        }
    }
}
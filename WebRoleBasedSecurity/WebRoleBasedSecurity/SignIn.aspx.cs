using System;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

namespace WebRoleBasedSecurity
{
    public partial class SignIn : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader srdr;
        string constr = "server=DESKTOP-6C7NE1Q\\SQL2012;database=Usersdb;trusted_connection=true";
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            lblMsg.Visible = false;
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            lblMsg.Visible = true;
            string userrole = "";
            string username = "";
            try {
                con = new SqlConnection(constr);
                cmd = new SqlCommand()
                { CommandText = "select UserName,UserRole from UsersLogin where UserName=@uname and UserPwd=@upwd",
                    Connection = con
                };
                cmd.Parameters.AddWithValue("@uname", txtUserName.Text);
                cmd.Parameters.AddWithValue("@upwd", txtUserPwd.Text);
                con.Open();
                srdr = cmd.ExecuteReader();
                if(srdr.HasRows)
                {
                    while (srdr.Read())
                    {
                        userrole = srdr["UserRole"].ToString();
                        username = srdr["UserName"].ToString();
                    }
                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket
                  (1,username,DateTime.Now,DateTime.Now.AddMinutes(5),true,
                  userrole,FormsAuthentication.FormsCookiePath);
                    string hashCookies = FormsAuthentication.Encrypt(ticket);
                    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hashCookies);
                    Response.Cookies.Add(cookie);
                    string returnurl = Request.QueryString["ReturnUrl"];
                    if (returnurl == null)
                    { returnurl = "Home.aspx"; }
                    Response.Redirect(returnurl);
                     

                }
                else
                {
                    lblMsg.Text = "Login Failed!!!";
                }

            }
            catch(Exception ex) { lblMsg.Text = "Error!!!" + ex.Message; }
            finally
            {
                con.Close();
            }
        }
    }
}
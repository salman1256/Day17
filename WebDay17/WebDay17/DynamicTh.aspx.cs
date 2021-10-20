using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebDay17
{
	public partial class DynamicTh : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{			if (!Page.IsPostBack)
			{
				DirectoryInfo themeDir = new DirectoryInfo(Server.MapPath("App_Themes"));
				lstThemes.DataTextField = "Name";
				lstThemes.DataSource = themeDir.GetDirectories();
				lstThemes.DataBind();
			}		}

		protected void Page_PreInit(object sender, EventArgs e)
		{
			if (Session["Theme"] == null)
			{
				// No theme has been chosen. Choose a default
				// (or set a blank string to make sure no theme
				// is used).
				Page.Theme = "";
			}
			else
			{
				Page.Theme = (string)Session["Theme"];
			}
		}

		protected void cmdApply_Click(object sender, EventArgs e)
		{
			// Set the chosen theme.
			Session["Theme"] = lstThemes.SelectedValue;
						// Refresh the page.
			Server.Transfer(Request.FilePath);		}
		protected void cmdClear_Click(object sender, EventArgs e)
		{
			// Set the chosen theme.
			Session["Theme"] = "";

			// Refresh the page.
			Server.Transfer(Request.FilePath);
		}
	}
}
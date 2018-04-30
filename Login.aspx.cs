using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DBProject.DAL;

namespace DBProject
{
	public partial class Login : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			//Console.WriteLine("WD");

		}
		protected void loginQuery(object sender, EventArgs e)
		{
	
			myDAL objMyDal = new myDAL();
			string email = Request["email"].ToString();
			string password = Request["password"].ToString();
			int found;
			found = objMyDal.loginDAL(email, password);

			if (found == 1)
			{
				dvMessage.Visible = true;
				lblMessage.Text = "Login Successful , " + email;
				Session["user"] = email;
				string url = "Home.aspx";
				Response.Redirect(url);
			}
			else if (found == -1)
			{
				dvMessage.Visible = true;
				lblMessage.Text = "Invalid Email";
			}
			else
			{
				dvMessage.Visible = true;
				lblMessage.Text = "Password is incorrect";
			}
		}
	}
}
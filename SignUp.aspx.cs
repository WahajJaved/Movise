using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using DBProject.DAL;

namespace DBProject
{
	public partial class SignUp : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
		
		}

		protected void signupQuery(object sender, EventArgs e)
		{
			myDAL objMyDal = new myDAL();
			string fName = firstName.Text;
			string lName = lastName.Text;
			string Email = email.Text;
			string Password = password.Text;
			int result = 0;
			int found;
			found = objMyDal.signupDAL(fName, lName, Email, Password, ref result);
			if (found == 0)
			{
				dvMessage.Visible = true;
				lblMessage.Text = "Account Created";
			}
			else
			{
				dvMessage.Visible = true;
				lblMessage.Text = "Email Already Taken";
			}
		}

	}
}
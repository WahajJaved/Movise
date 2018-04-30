using System;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Services;
using System.Data.SqlClient;
using System.Collections.Generic;
using DBProject.DAL;

namespace DBProject
{
	public class Person1
	{
		public String Name { get; set; }
		public String LastName { get; set; }
		public int Age { get; set; }
		public DateTime BirthDate { get; set; }
	}
	
	public partial class Search : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string query = Request.QueryString["query"];
			//HtmlGenericControl li = (HtmlGenericControl)FindControl("imgAnchor");
			//HtmlGenericControl img = (HtmlGenericControl)FindControl("imgSrc");
			//HtmlGenericControl text = (HtmlGenericControl)FindControl("textAnchor");
			//// A simple example using Page_Load
			//Control ctrl = FindControl("imgAnchor");
			//repPeople.FindControl("textAnchor").;
			imgAnchor.HRef = "Home.aspx";
			//if (ctrl != null)
			//{
			//	ctrl.href = "";
			//}
			//for (int i = 0; i < 10; i++)
			//{

			//	li.Href = "";
			//	li.Attributes.Add("href","Home.aspx");
			//	img.Attributes.Add("src", "14.jpg");
			//	text.InnerText = "DADADA";
			//}

			//if (!IsPostBack)
			//{
			////	repPeople.DataSource = people;
			////	repPeople.DataBind();
			//}
			//RepeaterItem a = new RepeaterItem(1,string);
		}
		protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
		{
			if (e.Item.ItemType == ListItemType.Item)
			{
				HyperLink tAnchor  = e.Item.FindControl("textAnchor") as HyperLink;
				tAnchor.NavigateUrl = "Home.aspx";
				//if (lbl.Text.Equals("Satışa Dönmüştür"))
				//{
				//	btn.Visible = false;
				//	lbl.ForeColor = System.Drawing.Color.Blue;
				//}
			}
		}
		protected void Search_Click(object sender, EventArgs e)
		{
			string url;
			url = "search.aspx?query=" + search.Text;
			Response.Redirect(url);
			//Server.Transfer("search.aspx", true);
		}


		[System.Web.Script.Services.ScriptMethod()]
		[System.Web.Services.WebMethod]
		public static List<string> getSearchResults(string prefixText, int count)
		{
			List<string> searchResults = new List<string>();
			//string query = search.Text.Trim();
			string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
			SqlConnection con = new SqlConnection(conStr);
			con.Open();
			SqlCommand cmd = new SqlCommand("searchResult", con);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.Add("@searchQuery", SqlDbType.VarChar, 255);
			cmd.Parameters["@searchQuery"].Value = prefixText;

			SqlDataReader dr = cmd.ExecuteReader();
			while (dr.Read())
			{
				searchResults.Add(dr["m_name"].ToString());
			}
			con.Close();
			return searchResults;
		}  
	
	}
}
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
	public partial class Home : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void Search_Click(object sender, EventArgs e)
		{
			string url;
			myDAL obj = new myDAL();
			if (obj.isMovie(search.Text) == 1)
				url = "Movie.aspx?mname=" + search.Text;
			else
				url = "Person.aspx?pname=" + search.Text;
			Response.Redirect(url);
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
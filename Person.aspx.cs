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
	public partial class Person : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string person = Request.QueryString["pname"];
			
			
			string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
			SqlConnection con = new SqlConnection(conStr);
			con.Open();
			SqlCommand cmd = new SqlCommand("searchActor", con);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.Add("@searchQuery", SqlDbType.VarChar, 255);
			cmd.Parameters["@searchQuery"].Value = person;

			SqlDataReader dr = cmd.ExecuteReader();
			dr.Read();

			personName.InnerHtml = "<strong>" + dr["p_name"].ToString() + "</strong> <h1 style='font-size:25px'> (" + dr["personYear"].ToString() + ")</h1> ";
			personDescript.InnerHtml = dr["descript"].ToString();
			personImg.Src = dr["picPath"].ToString();
			//personDOB.InnerHtml = dr["personYear"].ToString();
			personCountry.InnerHtml = dr["country"].ToString();
			personDescript.InnerHtml = dr["descript"].ToString();

			SqlConnection con1 = new SqlConnection(conStr);
			con1.Open();
			SqlCommand cast = new SqlCommand("personWorks", con1);
			cast.CommandType = CommandType.StoredProcedure;
			cast.Parameters.Add("@p_id", SqlDbType.VarChar, 255);
			cast.Parameters["@p_id"].Value = dr["p_id"];
			dr.Close();
			castList.InnerHtml = "<h1>Movies</h1> <br /> ";
			SqlDataReader rdr = cast.ExecuteReader();
			while (rdr.Read())
			{
				string pPath = rdr["picPath"].ToString();
				string mName = rdr["movieName"].ToString();
				string url = "Movie.aspx?mname=" + mName;
				castList.InnerHtml += " <div class='list-cast'> <div class='tableCell'> <a href=" + url + " target='_blank' title='Actor Profile'> <img style='width:40px;height:40px;border-radius:10%;' src= " + pPath + "> </a></div><div class='list-cast-info tableCell'> <br/>" + mName + "</div></div><br /><br/>";
			}
		}

	}
}
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
	public partial class Movie : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			string movie = Request.QueryString["mname"];

			string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["conStr"].ConnectionString;
			SqlConnection con = new SqlConnection(conStr);
			con.Open();
			SqlCommand cmd = new SqlCommand("searchResult", con);
			cmd.CommandType = CommandType.StoredProcedure;
			cmd.Parameters.Add("@searchQuery", SqlDbType.VarChar, 255);
			cmd.Parameters["@searchQuery"].Value = movie;

			SqlDataReader dr = cmd.ExecuteReader();
			dr.Read();

			movieName.InnerHtml = "<strong>" + dr["m_name"].ToString() + "</strong> <h1 style='font-size:25px'> (" + dr["movieYear"].ToString() + ")</h1> ";

			descriptText.InnerHtml = dr["descript"].ToString();
			movieImg.Src = dr["picPath"].ToString();
			//releaseDate.InnerHtml = ;
			movieGenre.InnerHtml = dr["Genre"].ToString();


			SqlConnection con1 = new SqlConnection(conStr);
			con1.Open();
			SqlCommand cast = new SqlCommand("movieActors", con1);
			cast.CommandType = CommandType.StoredProcedure;
			cast.Parameters.Add("@m_id", SqlDbType.VarChar, 255);
			cast.Parameters["@m_id"].Value = dr["m_id"];
			dr.Close();

			SqlDataReader rdr = cast.ExecuteReader();
			castList.InnerHtml = "<h1>Cast</h1> <br /> ";
			while(rdr.Read())
			{	
				string pPath = rdr["picPath"].ToString();
				string cName = rdr["characterName"].ToString();
				string aName = rdr["actorName"].ToString();
				string url = "Person.aspx?pname=" + aName;
				castList.InnerHtml += "<div class='list-cast'> <div class='tableCell'> <a href=" + url + " target='_blank' title='Actor Profile'> <img style='width:40px;height:40px;border-radius:50%;' src= " + pPath + "></a> </div> <br /><div class='list-cast-info tableCell'>" + aName + " as <strong>" + cName + "</strong></div></div><br/><br/>";
			}
		}
	}
}
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

namespace WEB_Assignment___Agriculture
{
    public partial class Map : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {/*
			string url = "https://maps.googleapis.com/maps/api/geocode/xml?latlng" = lat.Text.ToString "& location_type = ROOFTOP & result_type = street_address & key = AIzaSyA9kJ-z44cnQ3QJHff1sQTlbnEYH-plu48&callback=myMap";			
			WebRequest request = WebRequest.Create(url);
			using (WebResponse response = (HttpWebResponse)request.GetResponse())
			{
				using (StreamReader reader = new StreamReader(response.GetResponseStream())
				{
					DataSet dsResult = new DataSet() }) 
					dsResult.ReadXml(reader);
					DataTable dtCoordinates = new DataTable();

					dtCoordinates.Columns.AddRange(new DataColumn[4] 
					{
						new DataColumn("Id", typeof(int)),
						new DataColumn("Address", typeof(String)),
						new DataColumn("Latitude", typeof(String)),
						new DataColumn("Longitude", typeof(String)) 
					});

					foreach (DataRow row in dsResult.Tables["result"].Rows)
					{
						String geometry_id = dsResult.Tables["geometry"].Select("result");
						DataRow location = dsResult.Tables["location"].Select("geometry");
						dtCoordinates.Rows.Add(row["result_id"], row["formatted_address"]);
					}
					GridView2.DataSource = dtCoordinates;
					GridView2.DataBind();
				}*/
			}
		}
	}

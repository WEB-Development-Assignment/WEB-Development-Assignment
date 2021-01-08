using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace WEB_Assignment___Agriculture
{
    public partial class SIGN_UP : System.Web.UI.Page
    {
        private object lblError;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed10_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void Unnamed8_TextChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            
        }

        protected void txtpass_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtmail_TextChanged(object sender, EventArgs e)
        {

        }

        protected void signbtn_Click(object sender, EventArgs e)
        {
            if (txtname.Text == "" || txtnic.Text == "" || txtpass.Text == "" || lati.Text == "" || longi.Text == "")
            {
                
            }
            else
            {
                try
                {
                   
                    SqlConnection con = new SqlConnection("server=127.0.0.1;user id=root;database=doa");
                    SqlCommand cmd = new SqlCommand("INSERT INTO Farmer (nic, Name,email,farmname,address,password, latitude,longitude) VALUES ('" + txtnic.Text + "' , '" + txtname.Text + "' , '" + txtmail.Text + "' , '" + txtfarmname.Text + "' , '" + txtaddress.Text + "' , '" + txtpass.Text + "' ,  '" + lati.Text + "' , '" + longi.Text + "' ,)", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("Registerd Successfully!'");

                    txtnic.Text = "";
                    txtname.Text = "";
                    txtmail.Text = "";
                    txtfarmname.Text = "";
                    txtaddress.Text = "";
                    txtpass.Text = "";
                    lati.Text = "";
                    longi.Text = "";

                }
                catch (Exception ex)
                {
                    Response.Write("Error!" + ex);
                }
            }
        }
    }
}

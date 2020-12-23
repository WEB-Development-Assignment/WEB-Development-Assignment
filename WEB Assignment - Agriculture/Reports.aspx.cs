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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {     
            if (!IsPostBack)
            {
                CalendarMFD.Visible = false;
                CalendarEXD.Visible = false;
                m
            }
        }

        protected void ImageButtonMFD_Click(object sender, ImageClickEventArgs e)
        {
            if(CalendarMFD.Visible)
            {
                CalendarMFD.Visible = false;
            }
            else
            {
                CalendarMFD.Visible = true;
            }

            CalendarMFD.Attributes.Add("style", "position:absolute");
        }

        protected void ImageButtonEXD_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarEXD.Visible)
            {
                CalendarEXD.Visible = false;
            }
            else
            {
                CalendarEXD.Visible = true;
            }
            CalendarEXD.Attributes.Add("style", "position:absolute");
        }

        protected void CalendarEXD_SelectionChanged(object sender, EventArgs e)
        {
            txtEXD.Text = CalendarEXD.SelectedDate.ToString("dd/MM/yyyy");
            CalendarEXD.Visible = false;

        }

        protected void CalendarMFD_SelectionChanged(object sender, EventArgs e)
        {
            txtMFD.Text = CalendarMFD.SelectedDate.ToString("dd/MM/yyyy");
            CalendarMFD.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection("Data Source=DESKTOP-VHPDJKD;Initial Catalog=DoA;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO Reports (F_NIC, F_Name, F_Contact_No, F_Crop_Type, F_MFD, F_EXP, F_Location) VALUES ('" + txtNIC.Text + "' , '" + txtName.Text + "' , '" + txtContactNo.Text + "' , '" + txtCropType.Text + "' , '" + txtMFD.Text + "' , '" + txtEXD.Text + "' , '" + "" + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("Insrted Successfully!'");
            }
            catch(Exception ex)
            {
                Response.Write("Error!" + ex);                
            }
        }
    }
}
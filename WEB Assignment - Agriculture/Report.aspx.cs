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
                CalendarMFG.Visible = false;
                CalendarEXP.Visible = false;
                lblError.Visible = false;
                lblSuccess.Visible = false;
            }
        }

        protected void ImageButtonMFG_Click(object sender, ImageClickEventArgs e)
        {
            if(CalendarMFG.Visible)
            {
                CalendarMFG.Visible = false;
            }
            else
            {
                CalendarMFG.Visible = true;
            }

            CalendarMFG.Attributes.Add("style", "position:absolute");
        }

        protected void ImageButtonEXP_Click(object sender, ImageClickEventArgs e)
        {
            if (CalendarEXP.Visible)
            {
                CalendarEXP.Visible = false;
            }
            else
            {
                CalendarEXP.Visible = true;
            }
            CalendarEXP.Attributes.Add("style", "position:absolute");
        }

        protected void CalendarEXP_SelectionChanged(object sender, EventArgs e)
        {
            txtEXP.Text = CalendarEXP.SelectedDate.ToString("dd/MM/yyyy");
            CalendarEXP.Visible = false;
        }

        protected void CalendarMFG_SelectionChanged(object sender, EventArgs e)
        {
            txtMFG.Text = CalendarMFG.SelectedDate.ToString("dd/MM/yyyy");
            CalendarMFG.Visible = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtNIC.Text == "" || txtName.Text == "" || txtContactNo.Text == "" || txtCropType.Text == "" || txtMFG.Text == "" || txtEXP.Text == "")
            {
                lblError.Visible = true;
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-VHPDJKD;Initial Catalog=DoA;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand(@"INSERT INTO Reports (F_NIC, F_Name, F_Contact_No, F_Crop_Type, F_MFG, F_EXP, F_Location) VALUES ('" + txtNIC.Text + "' , '" + txtName.Text + "' , '" + txtContactNo.Text + "' , '" + txtCropType.Text + "' , '" + txtMFG.Text + "' , '" + txtEXP.Text + "' , '" + "" + "')", con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblSuccess.Visible = true;

                    txtNIC.Text = "";
                    txtName.Text = "";
                    txtContactNo.Text = "";
                    txtCropType.Text = "";
                    txtMFG.Text = "";
                    txtEXP.Text = "";
                }
                catch (Exception ex)
                {
                    Response.Write("Error!" + ex);
                }
            }
        }
    }
}
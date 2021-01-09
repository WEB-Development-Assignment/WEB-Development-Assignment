using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.IO;

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

        protected void ImageUpload_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Images/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            ImageUpload.SaveAs(folderPath + Path.GetFileName(ImageUpload.FileName));
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtNIC.Text == "" || txtName.Text == "" || txtCropType.Text == "" || txtMFG.Text == "" || txtEXP.Text == "")
            {
                lblError.Visible = true;
            }
            else
            {
                try
                {
                    string imgname = Path.GetFileName(ImageUpload.PostedFile.FileName);
                    string imgtype = ImageUpload.PostedFile.ContentType;
                    Stream sm = ImageUpload.PostedFile.InputStream;
                    BinaryReader br = new BinaryReader(sm);
                    byte[] bytes = br.ReadBytes((Int32)sm.Length);

                    MySqlConnection con = new MySqlConnection("server=127.0.0.1;user id=root;database=doa");
                    con.Open();
                    MySqlCommand cmd = new MySqlCommand(@"INSERT INTO reports (F_NIC, F_House_Name, F_Crop_Type, F_Image, F_Crop_MFG, F_Crop_EXP, F_Address, Latitude, Longitude) VALUES ('" + txtNIC.Text + "' , '" + txtName.Text + "' , '" + txtCropType.Text + "' ,  @imgpath  , '" + txtMFG.Text + "' , '" + txtEXP.Text + "' , '" + "" + "' , '" + txtLat.Text + "' , '" + txtLng.Text + "')", con);
                    cmd.Parameters.AddWithValue("@imgpath", bytes);
                    cmd.Parameters.AddWithValue("", imgtype);
                    cmd.ExecuteNonQuery();
                    con.Close(); lblSuccess.Visible = true;

                    txtNIC.Text = "";
                    txtName.Text = "";
                    txtCropType.Text = "";
                    txtMFG.Text = "";
                    txtEXP.Text = "";
                }


                    

                    /*
                    string[] validFileTypes = { "bmp", "gif", "png", "jpg", "jpeg", "doc", "xls" };
                    string ext = System.IO.Path.GetExtension(ImageUpload.PostedFile.FileName);
                    bool isValidFile = false;

                    for (int i = 0; i < validFileTypes.Length; i++)
                    {
                        if (ext == "." + validFileTypes[i])

                        {
                            isValidFile = true;
                            break;
                        }
                    }
                    SqlConnection con = new SqlConnection("server=127.0.0.1;user id=root;database=doa");
                    SqlCommand cmd = new SqlCommand(@"INSERT INTO reports (F_NIC, F_House_Name, F_Crop_Type, F_Image, F_Crop_MFG, F_Crop_EXP, F_Address, Latitude, Longitude) VALUES ('" + txtNIC.Text + "' , '" + txtName.Text + "' , '" + txtCropType.Text + "' , '" + ext + "' , '" + txtMFG.Text + "' , '" + txtEXP.Text + "' , '" + "" + "' , '" + "" + "' , '" + "" + "')", con);
                    con.Open();
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    con.Close(); */


                    /*
                    //take virtual path to store in the database
                    string path = "~/Images/" + ImageUpload.FileName;

                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-VHPDJKD;Initial Catalog=DoA;Integrated Security=True");
                    SqlCommand cmd = new SqlCommand(@"INSERT INTO Reports (F_NIC, F_House_Name, F_Crop_Type, F_Image, F_Crop_MFG, F_Crop_EXP, F_Location, Latitude, Longitude) VALUES ('" + txtNIC.Text + "' , '" + txtName.Text + "' , '" + txtCropType.Text + "' , '" + path + "' , '" + txtMFG.Text + "' , '" + txtEXP.Text + "' , '" + "" + "' , '" + txtLatitude.Text + "' , '" + txtLongitude.Text + "')", con);

                    //store image in folder image. to get the absolute path we use Server.MapPath

                    ImageUpload.SaveAs(Server.MapPath("Images") + "/" + ImageUpload.FileName);
                    con.Open();
                    //pass connection and query to your command object
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    con.Close();*/
                    /*
                                        if (ImageUpload.HasFile)
                                        {
                                            int imagefilelenth = ImageUpload.PostedFile.ContentLength;
                                            byte[] imgarray = new byte[imagefilelenth];
                                            HttpPostedFile image = ImageUpload.PostedFile;
                                            image.InputStream.Read(imgarray, 0, imagefilelenth);

                                            SqlConnection con = new SqlConnection("Data Source=DESKTOP-VHPDJKD;Initial Catalog=DoA;Integrated Security=True");
                                            SqlCommand cmd = new SqlCommand(@"INSERT INTO Reports (F_NIC, F_House_Name, F_Crop_Type, F_Image, F_Crop_MFG, F_Crop_EXP, F_Location, Latitude, Longitude) VALUES ('" + txtNIC.Text + "' , '" + txtName.Text + "' , '" + txtCropType.Text + "' , @Image , '" + txtMFG.Text + "' , '" + txtEXP.Text + "' , '" + "" + "' , '" + txtLatitude.Text + "' , '" + txtLongitude.Text + "')", con);
                                            con.Open();
                                            cmd.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = imgarray;
                                            cmd.ExecuteNonQuery();
                                            lblSuccess.Visible = true;

                                            txtNIC.Text = "";
                                            txtName.Text = "";
                                            txtCropType.Text = "";
                                            txtMFG.Text = "";
                                            txtEXP.Text = "";
                                        }*/
                    /*
                    if (ImageUpload.HasFile)
                    {
                        string str = ImageUpload.FileName;
                        ImageUpload.PostedFile.SaveAs(Server.MapPath("~/Images/" + "/" + str));
                        string imgpath = "~/Images/" + "/" + str.ToString();

                        SqlConnection con = new SqlConnection("Data Source=DESKTOP-VHPDJKD;Initial Catalog=DoA;Integrated Security=True");

                        SqlCommand cmd = new SqlCommand(@"INSERT INTO Reports (F_NIC, F_House_Name, F_Crop_Type, F_Image, F_Crop_MFG, F_Crop_EXP, F_Location, Latitude, Longitude) VALUES ('" + txtNIC.Text + "' , '" + txtName.Text + "' , '" + txtCropType.Text + "' ,  @image   , '" + txtMFG.Text + "' , '" + txtEXP.Text + "' , '" + "" + "' , '" + txtLatitude.Text + "' , '" + txtLongitude.Text + "')", con);
                        cmd.Parameters.AddWithValue("@image", imgpath);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        lblSuccess.Visible = true;

                        txtNIC.Text = "";
                        txtName.Text = "";
                        txtCropType.Text = "";
                        txtMFG.Text = "";
                        txtEXP.Text = "";
                    }*/
                
                catch (Exception ex)
                {
                    Response.Write("Error!" + ex);
                }
            }
        }
    }
}
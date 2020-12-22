<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="WEB_Assignment___Agriculture.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report Page</title>
    <link href="StyleSheet_Reports.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrapper">

                <div id="banner">

                </div>

                <ul id="navigation">
                    <li><a href="Default.aspx">Home</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">Account</a></li>
                    <li><a href="#">Reports</a></li>
                    <li><a href="#">Login</a></li>
                    <li><a href="SignUp.aspx">Sign Up</a></li>
                </ul>

                <br /><br /><br /><br />
                
                <div class="ReportBox">
                <h2>REPORT</h2><br /><br /><br />
                                        
                    <asp:Label Text="NIC" CssClass="lblNIC" runat="server" />
                    <asp:TextBox runat="server" CssClass="txtNIC" placeholder="Enter NIC" /><br />
                    
                    <asp:Label Text="Name" CssClass="lblName" runat="server" />
                    <asp:TextBox runat="server" CssClass="txtName" placeholder="Enter Name" /><br />

                    <asp:Label Text="Contact No" CssClass="lblContactNo" runat="server" />
                    <asp:TextBox runat="server" CssClass="txtContactNo" placeholder="Enter Contact No" /><br />

                    <asp:Label Text="Crop Type" CssClass="lblCropType" runat="server" />
                    <asp:TextBox runat="server" CssClass="txtCropType" placeholder="Enter Crop Type" /><br />

                    <asp:Label Text="Crop MFD" CssClass="lblMFD" runat="server" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <asp:TextBox runat="server" CssClass="txtMFD" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButtonMFD" runat="server" ImageUrl="https://png.pngtree.com/png-vector/20190216/ourlarge/pngtree-vector-calendar-icon-png-image_540870.jpg" ImageAlign="AbsBottom" Height="30px" Width="30px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Label Text="Crop MFD" CssClass="lblMFD" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="txtMFD" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="https://png.pngtree.com/png-vector/20190216/ourlarge/pngtree-vector-calendar-icon-png-image_540870.jpg" ImageAlign="AbsBottom" Height="30px" Width="30px"/><br /><br />
                    
                    <asp:Calendar Text="MFD" CssClass="CalendarMFD" runat="server" ID="CalendarMFD" SelectedDate="12/22/2020 19:44:32">
                    </asp:Calendar>&nbsp;&nbsp;

                    <asp:Calendar Text="EXD" CssClass="CalendarEXD" runat="server" ID="CalendarEXD" SelectedDate="12/22/2020 19:44:32">
                    </asp:Calendar>

                    <br /><br /><br /><br /><br /><br /><br />

                    <asp:Button Text="Submit" CssClass="btnSubmit" runat="server" />     
                    
                  </div>
                    
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

                <div id="footer">
                    <p><br />@All right reserved 2020</p>
                </div>

            </div>
    </form>
</body>
</html>

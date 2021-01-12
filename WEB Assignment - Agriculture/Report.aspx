<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="WEB_Assignment___Agriculture.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>

    <link href="StyleSheet_Nav.css" rel="stylesheet" />    
    <link href="StyleSheet_Reports.css" rel="stylesheet" />

    <script src="https://code.jquery.com/jquery-3.5.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" 
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBCuOXS1TgOF-g9OXZJOw3pfNQp7TA-Jw4&callback=farmerMap"></script>

    <script type="text/javascript">
        function initialize() {
            // Creating map object
            var map = new google.maps.Map(document.getElementById('map_canvas'), {
                zoom: 12,
                center: new google.maps.LatLng(6.931970, 79.857750),
                mapTypeId: google.maps.MapTypeId.ROADMAP
            });

            // creates a draggable marker to the given coords
            var vMarker = new google.maps.Marker({
                position: new google.maps.LatLng(6.931970, 79.857750),
                draggable: true
            });

            // adds a listener to the marker
            // gets the coords when drag event ends
            // then updates the input with the new coords
            google.maps.event.addListener(vMarker, 'dragend', function (evt) {
                $("#txtLat").val(evt.latLng.lat().toFixed(6));
                $("#txtLng").val(evt.latLng.lng().toFixed(6));

                map.panTo(evt.latLng);
            });

            // centers the map on markers coords
            map.setCenter(vMarker.position);

            // adds the marker on the map
            vMarker.setMap(map);
        }
    </script>
    <style type="text/css">
        .auto-style2 {
            left: 13%;
            position: absolute;
            top: 358px;
            height: 98px;
            width: 260px;
            margin-right: 0px;
        }
        .auto-style3 {
            left: 62%;
            position: absolute;
            top: 357px;
            height: 104px;
            right: 100px;
            width: 260px;
        }
    </style>
</head>

<body onload="initialize();">
    <form id="form1" runat="server">

        <nav class="mynav">
            <ul>
                <li>
                    <a href="Home.aspx">Home</a>
                </li>
                <li>
                    <a href="AboutUs.aspx">About us</a>
                </li>
                <li>
                    <a href="Store.aspx">Store</a>
                </li>
                <li>
                    <a href="ContactUs.aspx">Contact us</a>
                </li>    
                <li>
                    <a href="Report.aspx">Report</a>
                </li>
                <li>
                    <a href="SignUp.aspx">SignUp / SignIn</a>
                </li>
            </ul>
	    </nav>

                <div class="ReportBox">
                <h1>REPORT</h1><br />

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label Text="Your report submitted successfully!" CssClass="lblSuccess" runat="server" ID="lblSuccess"/><br />
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label Text="Please input all details!" CssClass="lblError" runat="server" ID="lblError"/><br /><br /><br />
                                        
                    <asp:Label Text="NIC" CssClass="lblNIC" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="txtNIC" placeholder="     Enter NIC" ID="txtNIC"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Label Text="Farm Name" CssClass="lblName" runat="server" />&nbsp;
                    <asp:TextBox runat="server" CssClass="txtName" placeholder="     Enter Farm Name" ID="txtName" /><br /><br /><br />

                    <asp:Label Text="Crop Type" CssClass="lblCropType" runat="server" />&nbsp;
                    <asp:TextBox runat="server" CssClass="txtCropType" placeholder="    Enter Crop Type" ID="txtCropType" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Label Text="Image" CssClass="lblImage" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="ImageUpload" runat="server" CssClass="ImageUpload" OnClick="ImageUpload_Click"/><br /><br /><br />

                    
                    <asp:Label Text="Crop MFG" CssClass="lblMFG" runat="server" />
                    <asp:TextBox runat="server" CssClass="txtMFG" placeholder="    Add MFG" ID="txtMFG"/>&nbsp;&nbsp;&nbsp;
                    
                    <asp:ImageButton ID="ImageButtonMFG" runat="server" ImageUrl="https://img.icons8.com/color/48/000000/calendar.png" ImageAlign="AbsBottom" OnClick="ImageButtonMFG_Click" Height="30px" Width="30px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Label Text="Crop EXP" CssClass="lblEXP" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="txtEXP" placeholder="    Add EXP" ID="txtEXP" />

                    <asp:ImageButton ID="ImageButtonEXP" runat="server" ImageUrl="https://img.icons8.com/color/48/000000/calendar.png" ImageAlign="AbsBottom" OnClick="ImageButtonEXP_Click" Height="30px" Width="30px"/>
                                        
                    <asp:Calendar Text="MFG" CssClass="auto-style2" runat="server" ID="CalendarMFG" OnSelectionChanged="CalendarMFG_SelectionChanged" SelectedDate="12/22/2020 19:44:32" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" CellPadding="4" DayNameFormat="Shortest">
                        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    
                        <asp:Calendar Text="EXP" CssClass="auto-style3" runat="server" ID="CalendarEXP" OnSelectionChanged="CalendarEXP_SelectionChanged" SelectedDate="12/22/2020 19:44:32" BackColor="White" BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" CellPadding="4" DayNameFormat="Shortest">
                        <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
                            <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                    <br /><br /><br /><br />
                    <asp:Label Text="Location" CssClass="lblLocation" runat="server" />
                                        
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label for="latitude" hidden="hidden" >Latitude:</label>
                    <asp:TextBox runat="server" CssClass="txtLat" value="6.931970" ID="txtLat" Visible="False" />&nbsp;

                    <label for="longitude" hidden="hidden">Longitude:</label>
                    <asp:TextBox runat="server" CssClass="txtLng" value="79.857750" ID="txtLng" Visible="False" />
                    
                    <br /><br /><br />
                    <div id="map_canvas" style="width: auto; height: 400px;">
                    </div>
                    
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button Text="Submit" CssClass="btnSubmit" runat="server" OnClick="btnSubmit_Click" ID="btnSubmit" Width="300px" />     
                    
                  </div>
                    
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <!--
                <div id="footer">
                    <p><br />@All right reserved 2020</p>
                </div>

            </div>-->
    </form>
</body>
</html>

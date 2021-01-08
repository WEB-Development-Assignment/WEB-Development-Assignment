<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="WEB_Assignment___Agriculture.WebForm1" %>

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
                    <li><a href="#">Report</a></li>
                    <li><a href="#">Login</a></li>
                    <li><a href="SignUp.aspx">Sign Up</a></li>
                </ul>

                <br /><br /><br /><br />
                
                <div class="ReportBox">
                <h2>REPORT</h2><br />

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
                    <asp:TextBox runat="server" CssClass="txtMFG" placeholder="    Add MFG" ID="txtMFG" />&nbsp;&nbsp;&nbsp;

                    <asp:ImageButton ID="ImageButtonMFG" runat="server" ImageUrl="https://img.icons8.com/color/48/000000/calendar.png" ImageAlign="AbsBottom" OnClick="ImageButtonMFG_Click" Height="30px" Width="30px"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <asp:Label Text="Crop EXP" CssClass="lblEXP" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox runat="server" CssClass="txtEXP" placeholder="    Add EXP" ID="txtEXP" />

                    <asp:ImageButton ID="ImageButtonEXP" runat="server" ImageUrl="https://img.icons8.com/color/48/000000/calendar.png" ImageAlign="AbsBottom" OnClick="ImageButtonEXP_Click" Height="30px" Width="30px"/><br /><br />
                                        
                    <asp:Calendar Text="MFG" CssClass="CalendarMFG" runat="server" ID="CalendarMFG" OnSelectionChanged="CalendarMFG_SelectionChanged" SelectedDate="12/22/2020 19:44:32" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="175px" NextPrevFormat="ShortMonth" Width="275px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>
                    
                        <asp:Calendar Text="EXP" CssClass="CalendarEXP" runat="server" ID="CalendarEXP" OnSelectionChanged="CalendarEXP_SelectionChanged" SelectedDate="12/22/2020 19:44:32" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="175px" NextPrevFormat="ShortMonth" Width="275px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <DayStyle BackColor="#CCCCCC" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                    </asp:Calendar>

                    <br /><br />
                    <asp:Label Text="Location" CssClass="lblLocation" runat="server" />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <div id="Map"> 
                        <!DOCTYPE html>
                            <html>
                                <head>
	                                <title>Map</title>
	                                <style>
                                        #myMap {
                                            height: 450px;
                                            width: 810px;
                                            left: 2%;
                                        }
                                    </style>
                                    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed in=true&libraries=places"></script>
                                    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
                                    <script type="text/javascript"> 
                                        var map;
                                        var marker;
                                        var myLatlng = new google.maps.LatLng(20.268455824834792,85.84099235520011);
                                        var geocoder = new google.maps.Geocoder();
                                        var infowindow = new google.maps.InfoWindow();
                                        function initialize()
                                        {
                                            var mapOptions =
                                            {
                                                zoom: 18,
                                                center: myLatlng,
                                                mapTypeId: google.maps.MapTypeId.ROADMAP
                                            };

                                            map = new google.maps.Map(document.getElementById("myMap"), mapOptions);

                                            marker = new google.maps.Marker(
                                                {
                                                map: map,
                                                position: myLatlng,
                                                draggable: true 
                                                }); 

                                            geocoder.geocode({ 'latLng': myLatlng }, function (results, status)
                                            {
                                                if (status == google.maps.GeocoderStatus.OK)
                                                {
                                                    if (results[0])
                                                    {
                                                        $('#latitude,#longitude').show();
                                                        $('#address').val(results[0].formatted_address);
                                                        $('#latitude').val(marker.getPosition().lat());
                                                        $('#longitude').val(marker.getPosition().lng());
                                                        infowindow.setContent(results[0].formatted_address);
                                                        infowindow.open(map, marker);
                                                    }
                                                }
                                            });

                                            google.maps.event.addListener(marker, 'dragend', function ()
                                            {
                                                geocoder.geocode({ 'latLng': marker.getPosition() }, function (results, status)
                                                {
                                                    if (status == google.maps.GeocoderStatus.OK)
                                                    {
                                                        if (results[0])
                                                        {
                                                            $('#address').val(results[0].formatted_address);
                                                            $('#latitude').val(marker.getPosition().lat());
                                                            $('#longitude').val(marker.getPosition().lng());
                                                            infowindow.setContent(results[0].formatted_address);
                                                            infowindow.open(map, marker);
                                                        }
                                                    }
                                                });
                                            });
                                        }

                                        google.maps.event.addDomListener(window, 'load', initialize);
                                    </script>

                                </head>
                                <body>
                                    <div id="myMap"></div><br />

                                    <asp:Label Text="Address" CssClass="lblAddress" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                    <input id="address" type="text" style="width:600px; margin-bottom: -20px; border: none; border-bottom: 3px solid black; outline: none; height: 40px; color: black; font-size: 12px; background-color: transparent; " placeholder="      Farm Address" /><br /> 
                                    
                                    <br />
                                    <input type="text" id="latitude" placeholder="Latitude"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    
                                    <input type="text" id="longitude" placeholder="Longitude"/>
                                </body>
                            </html>

                     <!--   <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Create a draggable Marker</title>
<meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no" />
<script src="https://api.mapbox.com/mapbox-gl-js/v2.0.1/mapbox-gl.js"></script>
<link href="https://api.mapbox.com/mapbox-gl-js/v2.0.1/mapbox-gl.css" rel="stylesheet" />
<style>
	body { margin: 0; padding: 0; }
	#map { position: absolute; top: 0; bottom: 0; width: 100%; }
</style>
</head>
<body>
<style>
    .coordinates {
        background: rgba(0, 0, 0, 0.5);
        color: #fff;
        position: absolute;
        bottom: 40px;
        left: 10px;
        padding: 5px 10px;
        margin: 0;
        font-size: 11px;
        line-height: 18px;
        border-radius: 3px;
        display: none;
    }
</style>

<div id="map"></div>
<pre id="coordinates" class="coordinates"></pre>

<script>
    // TO MAKE THE MAP APPEAR YOU MUST
    // ADD YOUR ACCESS TOKEN FROM
    // https://account.mapbox.com
    mapboxgl.accessToken = '<your access token here>';
    var coordinates = document.getElementById('coordinates');
    var map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v11',
        center: [0, 0],
        zoom: 2
    });

    var marker = new mapboxgl.Marker({
        draggable: true
    })
        .setLngLat([0, 0])
        .addTo(map);

    function onDragEnd() {
        var lngLat = marker.getLngLat();
        coordinates.style.display = 'block';
        coordinates.innerHTML =
            'Longitude: ' + lngLat.lng + '<br />Latitude: ' + lngLat.lat;
    }

    marker.on('dragend', onDragEnd);
</script>

</body>
</html>-->

                        <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126743.58585962832!2d79.78616421291655!3d6.922003946726586!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae253d10f7a7003%3A0x320b2e4d32d3838d!2sColombo%2C%20Sri%20Lanka!5e0!3m2!1sen!2ssg!4v1608740008392!5m2!1sen!2ssg" width="790" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0" id="Map" ></iframe>
                    --></div>

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:Button Text="Submit" CssClass="btnSubmit" runat="server" OnClick="btnSubmit_Click" ID="btnSubmit" Width="300px" />     
                    
                  </div>
                    
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

                <div id="footer">
                    <p><br />@All right reserved 2020</p>
                </div>

            </div>
    </form>
</body>
</html>

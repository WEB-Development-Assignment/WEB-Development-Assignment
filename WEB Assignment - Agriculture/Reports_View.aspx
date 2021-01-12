<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports_View.aspx.cs" Inherits="WEB_Assignment___Agriculture.Reports_View" %>

<!DOCTYPE html>
html>
<head>
    <meta name="viewport" content="width=device-width"/>
    
    <link href="StyleSheet_Nav.css" rel="stylesheet" />   
    <title>Index</title>
</head>
<body>
    
    <form runat="server">

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
                    <a href="Reports_View.aspx">Reports View</a>
                </li>
                <li>
                    <a href="SignUp.aspx">Sign Out</a>
                </li>
            </ul>
	    </nav>

    <div id="dvMap" style="width: 500px; height: 500px">
    </div>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=API_Key"></script>
    <script type="text/javascript">
        var markers = @Html.Raw(ViewBag.Markers);
        window.onload = function () {
            var mapOptions = {
                center: new google.maps.LatLng(markers[0].lat, markers[0].lng),
                zoom: 8,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var infoWindow = new google.maps.InfoWindow();
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            for (i = 0; i < markers.length; i++) {
                var data = markers[i]
                var myLatlng = new google.maps.LatLng(data.lat, data.lng);
                var marker = new google.maps.Marker({
                    position: myLatlng,
                    map: map,
                    title: data.title
                });
                (function (marker, data) {
                    google.maps.event.addListener(marker, "click", function (e) {
                        infoWindow.setContent(data.description);
                        infoWindow.open(map, marker);
                    });
                })(marker, data);
            }
        }
    </script>
</body>
</html>



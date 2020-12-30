<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WEB_Assignment___Agriculture.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNXFDYXqovjz8ANovtB4PDXmT7hDkE9vw&signedin=true&libraries=places""></script>

    <script type="text/javascript">
        google.maps.event.addDomListener(window, 'load', intilize);
        function intilize() {
            var autocomplete = new google.maps.places.Autocomplete(document.getElementById('txtautocomplete'));
            google.maps.event.addListener(autocomplete, 'place_changed', function () {
                var place = autocomplete.getPlace();
                var location = "<b>Location:</b>" + place.formatted_address + "<br/>";
                location += "<b>Latitude:</b>" + place.geometry.location.A + "<br/>";
                location += "<b>Longitude:</b>" + place.geometry.location.F;
                document.getElementById('lblResult').innerHTML = location
            });
        };
    </script>
    <span>location: </span>
    <input type="text" id="txtautocomplete" style="width:200px" placeholder="Enter the address" /><br /><br /><br />

    <label id="lblResult"></label>
</body>
</html>

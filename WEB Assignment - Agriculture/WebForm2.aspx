<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WEB_Assignment___Agriculture.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Set Location On Google Map</title>

	<script src="https://maps.googleapis.com/maps?file=api&amp;y=2&amp;sensor=true;key=AIzaSyDhnTaFdT1yTbnu8nByBOnPmiRnLm2xqVY=myMap"></script> 
	<!--<script src="https://maps.googleapis.com/maps/api/directions/json?origin=Toronto&destination=Montreal&key=AIzaSyBXG4iVL9MYSkAZNdkc7Cy5-TrYu8rkuag"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhnTaFdT1yTbnu8nByBOnPmiRnLm2xqVY&sensor=true"></script>-->
	<script type="text/javascript">
	
	function load() {
		if(GBrowserIsCompatible()) {
			var map = new Gmap2(document.getElementById("map"));
			map.addControl(new GSmallMapControl());
			map.addControl(new GMapTypeControl());
			var center = new GLatLng(30.0764008, 31.2454738);
			map.setCenter(center, 14);
			map.setMapType(G_SATELLITE_MAP);
			geocoder = new GClientGeocoder();

			var marker = new GMarker(center, { draggable: true });
			map.addOverlay(marker);

			document.getElementById("lat").value = center.lat();
			document.getElementById("lng").value = center.lng();

			geocoder = new GClientGeocoder();

			GEvent.addListner(marker, "dragend", function() {
				var point = marker.getPoint();
				map.panTo(point);
				alert(point);
				document.getElementById("lat").value = point.lat();
				document.getElementById("lng").value = point.lng();
			});

			GEvent.addListner(map, "moveend", function() {
				map.clearOverlays();
				var center = map.getCenter();
				var marker = new GMarker(center, { draggable: true });
				map.addOverlay(marker);
				document.getElementById("lat").value = center.lat();
				document.getElementById("lng").value = center.lng();

				GEvent.addListner(marker, "dragend", function() {
					var point = marker.getPoint();

					map.panTo(point);
					document.getElementById("lat").value = center.lat();
					document.getElementById("lng").value = center.lng();
				});
			});
		}
	}

	function showAddress(address) {
		var map = new GMap2(document.getElementById("map"));
		map.addControl(new GSmallMapControl());
		map.addControl(new GMapTypeControl());
		if(geocoder) {
			geocoder.getLatLng(
				address,
				function(point) {
					if(!point) {
						alert(address + " city not found!");
					}
					else {
						document.getElementById("lat").value = pt.lat();
						document.getElementById("lng").value = pt.lng();
						map.clearOverlays();
						map.setCenter(point, 14);
						var marker = new GMarker(point, { draggable: true });
						map.addOverlay(marker);

						GEvent.addListner(marker, "dragend", function() {
							var pt = marker.getPoint();
							map.panTo(pt);
							document.getElementById("lat").value = pt.lat();
							document.getElementById("lng").value = pt.lng();
						});

		GEvent.addListner(map, "moveend", function() {
			map.clearOverlays();
			var center = map.getCenter();
			var marker = new GMarker(center, { draggable: true });
			map.addOverlay(marker);
			document.getElementById("lat").value = center.lat();
			document.getElementById("lng").value = center.lng();

			GEvent.addListner(marker, "dragend", function() {
				var pt = marker.getPoint();
				map.panTo(pt);
				document.getElementById("lat").value = pt.lat();
				document.getElementById("lng").value = pt.lng();
			});
		});
	}
}
);
		}
	}
    </script>

</head>
<body onload = "load()" onunload = "GUnload()">

	<script language="JavaScript">
<!--
    var message = ""
    function clickIE() { if (document.all) { (message); return false; } }
    function clickNS(e) {
        if (document.layers || (document.getElementById && !document.all)) {
            if (e.wich == 2 || e.wich == 3) { (message); return false; }
        }
    }
    if (document.layers) {
        document.captureEvents(Event.MOUSEDOWN); document.onmousedown = clickNS;
    }
    else {
        document.onmouseup = clickNS; document.oncontextmenu = clickIE;
    }
    document.oncontextmenu = new Function("return false")
//-->
    </script>

    <form id="form1" runat="server">
        <div>

			<asp:TextBox runat="server" id="lat" name="latitude"></asp:TextBox>
			<asp:TextBox runat="server" id="lng" name="longitude"></asp:TextBox>
			<div align="center" id="map" style="width: 600px; height: 400px"></div>

        </div>
    </form>
</body>
</html>

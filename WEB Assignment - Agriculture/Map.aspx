<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="WEB_Assignment___Agriculture.Map" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
			if (geocoder) {
				geocoder.getLatLng(
					address,
					function (point)
					{
						if (!point)
						{
							alert(address + " city not found!");
						}
						else {
							document.getElementById("lat").value = pt.lat();
							document.getElementById("lng").value = pt.lng();
							map.clearOverlays();
							map.setCenter(point, 14);
							var marker = new GMarker(point, { draggable: true });
							map.addOverlay(marker);

							GEvent.addListner(marker, "dragend", function () {
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
    <form id="form1" runat="server">
        <div>
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

			<div align="center" id="map" style="width: 600px; height: 400px"></div>

			<br />

			<asp:TextBox runat="server" id="lat" name="latitude"></asp:TextBox>

			<br />

			<asp:TextBox runat="server" id="lng" name="longitude"></asp:TextBox>

			<asp:TextBox runat="server" id="Full_address" name="Titles"></asp:TextBox>

			<br />

			<asp:TextBox runat="server" id="Description" name="Titles"></asp:TextBox>

			<br />

            <asp:Button ID="Button1" runat="server" Text="Get address name" OnClick="Button1_Click" />

			<br />

			<asp:GridView ID="GridView2" HarderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="Black" runat="server" AutoGenerateColumns="false">
			<Columns>
				<asp:BoundField DataField="Id" HeaderText="Id" />
				<asp:BoundField DataField="Address" HeaderText="Address" />
				<asp:BoundField DataField="Latitude" HeaderText="Latitude" />
				<asp:BoundField DataField="Longitude" HeaderText="Longitude" />
			</Columns>
			</asp:GridView>

            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>

        </div>
    </form>


</body>
</html>

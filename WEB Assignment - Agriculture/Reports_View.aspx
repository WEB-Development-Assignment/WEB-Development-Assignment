<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports_View.aspx.cs" Inherits="WEB_Assignment___Agriculture.Reports_View" %>

<!DOCTYPE html>

    <html lang="en">        
<head>
    <link href="StyleSheet_Nav.css" rel="stylesheet" />
    <title>Access Google Maps API in PHP</title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript" src="js/googlemap.js"></script>
	<style type="text/css">
		.container {
			height: 450px;
		}
		#map {
			width: 100%;
			height: 100%;
			border: 1px solid blue;
		}
		#data, #allData {
			display: none;
		}
	</style>
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
        </form>
    
     <div class="container">
		<h1>Access Google Maps API in PHP</h1>
		<?php 
			require 'education.php';
			$edu = new education;
			$coll = $edu->getCollegesBlankLatLng();
			$coll = json_encode($coll, true);
			echo '<div id="data">' . $coll . '</div>';

			$allData = $edu->getAllColleges();
			$allData = json_encode($allData, true);
			echo '<div id="allData">' . $allData . '</div>';			
		 ?>
		<div id="map"></div>
	</div>

</body>
        
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCt2DUw5njluDzXuF0qrnf5PxCqCUzLRV4&callback=loadMap">
</script>

</html>



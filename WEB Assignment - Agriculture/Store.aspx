<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="WEB_Assignment___Agriculture.Store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet_Store.css" rel="stylesheet" />
    <link href="StyleSheet_Store_Swiper.css" rel="stylesheet" />
    <link href="StyleSheet_Nav.css" rel="stylesheet" />
</head>
<body style="background-image: url(Images/c1.jpg);" style="overflow: hidden;">
    <nav class="mynav">
 <ul>
    <li>
      <a href="Default.aspx">Home</a>
    </li>
    <li>
      <a href="AboutUs.aspx">About</a>
    </li>
    <li>
      <a href="Store.aspx">Store</a>
    </li>
    <li>
      <a href="services.html">Services</a>
    </li>    
    <li>
      <a href="Report.aspx">Report</a>
    </li>
     <li>
      <a href="store.html">SignUp / SignIn</a>
    </li>
  </ul>
	</nav>
    	<!--slider 1-->
	<div class="heading">
		<h1>O N L I N E&emsp;S T O R E</h1>
	</div>
	<div class="main">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<!--1 st Product-->
				<div class="swiper-slide">
					<div class="slider-box">
						<p class="time">5% OFFER</p>
						<div class="img-box">
							<img src="Images/product_1.jpg">
						</div>
						<div class="cart">
							<a href="selectprice1.php">Apple</a>
						</div>
					</div>
				</div>
				<!--2 nd Product-->
				<div class="swiper-slide">
					<div class="slider-box">
						<p class="time"></p>
						<div class="img-box">
							<img src="Images/product_2.jpg">
						</div>
						<div class="cart">
							<a href="selectprice2.php">Carrot</a>
						</div>
					</div>
				</div>
				<!--3 rd Product-->
				<div class="swiper-slide">
					<div class="slider-box">
						<p class="time">New</p>
						<div class="img-box">
							<img src="Images/product_3.jpg">
						</div>
						<div class="cart">
							<a href="selectprice3.php">Bell-pepper</a>
						</div>
					</div>
				</div>
                <!--4 th Product-->
				<div class="swiper-slide">
					<div class="slider-box">
						<p class="time">10% OFFER</p>
						<div class="img-box">
							<img src="Images/product_4.jpg">
						</div>
						<div class="cart">
							<a href="selectprice3.php">Strawberry</a>
						</div>
					</div>
				</div>
			</div>
			<script type="text/javascript" src="swiper.min.js"></script>
			<script src="store.js"></script>
</body>
</html>

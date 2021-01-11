﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WEB_Assignment___Agriculture._Default" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head Home</title>
        <link rel="stylesheet" type="text/css" href="Today.css">
    <link href="StyleSheet_Template.css" rel="stylesheet" />
    <link href="StyleSheet_Nav.css" rel="stylesheet" />
  <title>Home-page</title>
  <style type="text/css">

 body {
  background-image: url('Images/home_background.jpg');
  background-size:cover;
  
}
background-image {
  opacity: 20%;
}
.container{
  text-align: center;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
  width: 100%;
}
.container span{
  display: block;
}
.text1{
  color:rgb(104, 219, 33);
  font-size: 150px;
  font-weight: 1000;
  letter-spacing: 20px;
  margin-bottom: 20px;
  position: relative;
  animation: text 2s 1;
  fill-opacity: initial;
  background-color: lavender;
  text-shadow: 2px  black;
}

@keyframes text {
  0%{
    color: black;
    margin-bottom: -40px;
    opacity:50%;
  }
  30%{
    letter-spacing: 25px;
    margin-bottom: -40px;
  }
  85%{
    letter-spacing: 8px;
    margin-bottom: -40px;
  }
}
section{
  text-align:center;
}
html {
  box-sizing: border-box;
}
</style> 
</head>
<body>
<div class="container">
  <span class="text1">Keells Online Store</span>
</div>
  
<nav class="mynav">
 <ul>
    <li>
      <a href="Default.aspx">Home</a>
    </li>
    <li>
      <a href="AboutUs.aspx">About</a>
    </li>
    <li>
      <a href="store.html">Store</a>
    </li>
    <li>
      <a href="services.html">Services</a>
    </li>    
    <li>
      <a href="Report.aspx">Report</a>
    </li>
     <li>
      <a href="login.aspx">SignIn</a>
    </li>
     <li>
      <a href="SignUp.aspx">SignUp</a>
    </li>
  </ul>
</nav>
    </body>
</html>
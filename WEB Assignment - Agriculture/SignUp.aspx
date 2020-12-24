<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WEB_Assignment___Agriculture.SIGN_UP" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp Page</title>
    <link href="StyleSheet_SignUp.css" rel="stylesheet" />
</head>
<body>
    <div class ="SignUpBox">
        <img src ="https://img.icons8.com/fluent/48/000000/add-user-male.png" class ="user" alt ="Alternate Text"/>
        <h2>Sign Up</h2>
        <form runat ="server" style="height: 480px; width: 402px">
            <asp:Label Text="Name" CssClass="lblName" runat="server" />
            <asp:TextBox runat="server" CssClass="txtName" placeholder="Enter Name" />

            <asp:Label Text="Email" CssClass="lblEmail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email" />

            <asp:Label Text="NIC" CssClass="lblNIC" runat="server" />
            <asp:TextBox runat="server" CssClass="txtNIC" placeholder="Enter NIC" />

            <asp:Label Text="Crop Type" CssClass="lblCropType" runat="server" />
            <asp:TextBox runat="server" CssClass="txtCropType" placeholder="Enter Crop Type" />

            <asp:Button Text="Sign Up" CssClass="btnSubmit" runat="server" />

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:LinkButton Text="Already Registered? Sign In" CssClass="btnLogin" runat="server" OnClick="Unnamed10_Click" /> 

            <br />
            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btnLogin" OnClick="LinkButton2_Click">Sign Up as Keels Or DOA Member</asp:LinkButton>

        </form>
    </div>
</body>
</html>

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
        <form runat ="server" style="height: 538px; width: 402px">
            <asp:Label Text="Name" CssClass="lblName" runat="server" />
            <asp:TextBox runat="server" CssClass="txtName" placeholder="Enter Name" />

            <asp:Label Text="Email" CssClass="lblEmail" runat="server" />
            <asp:TextBox runat="server" CssClass="txtEmail" placeholder="Enter Email" />

            <asp:Label Text="NIC" CssClass="lblNIC" runat="server" />
            <asp:TextBox runat="server" CssClass="txtNIC" placeholder="Enter NIC" />

            <asp:Label Text="Farm Name" CssClass="lblFarmName" runat="server" />
            <asp:TextBox runat="server" CssClass="txtFarmName" placeholder="Enter Farm Name" OnTextChanged="Unnamed8_TextChanged" />

            <asp:Label Text="Address" CssClass="lblAddress" runat="server" />
            <asp:TextBox runat="server" CssClass="txtAddress" placeholder="Enter Address" />

            <asp:Label Text="Password" CssClass="lblPassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="Enter Password" />

             <asp:Label Text="Re Enter Password" CssClass="lblPassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="Re Enter Password" />
            &nbsp; 

            <br />

            <asp:Button Text="Sign Up" CssClass="btnSubmit" runat="server" />

            <br />

            <asp:LinkButton Text="Already Registered? Sign In" CssClass="btnLogin" runat="server" ID="linklog" /> 
           
            <br />
            <asp:LinkButton Text="Sign Up as Keels Or DOA Member" CssClass="btnLogin" runat="server"  ID="linkkeels" />
            

        </form>
    </div>
</body>
</html>

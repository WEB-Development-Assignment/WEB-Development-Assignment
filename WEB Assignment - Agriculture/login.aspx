<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WEB_Assignment___Agriculture.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp Page</title>
    <link href="StyleSheet_SignIn.css" rel="stylesheet" />
</head>
<body>
    <div class ="SignUpBox">
        <img src ="https://achieve.lausd.net/cms/lib/CA01000043/Centricity/domain/779/welligentbuttons/login.png" class ="user" alt ="Alternate Text"/>
        <h2>Sign In</h2>
        <form runat ="server" style="height: 538px; width: 402px">
            
            <asp:Label Text="NIC" CssClass="lblNIC" runat="server" />
            <asp:TextBox runat="server" CssClass="txtNIC" placeholder="Enter NIC" />

            

            <asp:Label Text="Password" CssClass="lblPassword" runat="server" />
            <asp:TextBox runat="server" CssClass="txtPassword" placeholder="Enter Password" TextMode="Password"/>
            &nbsp; 

            <br />

            <asp:Button Text="Sign In" CssClass="btnSubmit" runat="server" />

            <br />

            <asp:LinkButton Text="Not Registered? Sign Up" CssClass="btnsignup" runat="server" ID="linklog" /> 
           
            <br />
            <asp:LinkButton Text="Sign In as Keels Or DOA Member" CssClass="btnsignup" runat="server"  ID="linkkeels" />
            

        </form>
    </div>
</body>
</html>

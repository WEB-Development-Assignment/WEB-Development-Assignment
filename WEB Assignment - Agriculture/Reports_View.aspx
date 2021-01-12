<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports_View.aspx.cs" Inherits="WEB_Assignment___Agriculture.Reports_View" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reports_View</title>

    <link href="StyleSheet_Nav.css" rel="stylesheet" />  
    
  

    <meta charset="utf-8" />
    <title><%: Page.Title %> - My ASP.NET Application</title>
    <link href="~/Content/Site.css" rel="stylesheet" /> 
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
    <asp:PlaceHolder runat="server">        
        <script src="<%: ResolveUrl("~/Scripts/modernizr-2.5.3.js") %>"></script>
    </asp:PlaceHolder>
    <meta name="viewport" content="width=device-width" />
    <asp:ContentPlaceHolder runat="server" ID="HeadContent" />
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

    <asp:ScriptManager runat="server">
        <Scripts>
            <asp:ScriptReference Name="jquery" />
            <asp:ScriptReference Name="jquery.ui.combined" />
        </Scripts>
    </asp:ScriptManager>
    <header>
        <div class="content-wrapper">
            <div class="float-left">
                <p class="site-title"><a runat="server" href="~/">your logo here</a></p>
            </div>
            <div class="float-right">
                <section id="login">
                    <asp:LoginView runat="server" ViewStateMode="Disabled">
                        <AnonymousTemplate>
                            <ul>
                                <li><a id="registerLink" runat="server" href="~/Account/Register.aspx">Register</a></li>
                                <li><a id="loginLink" runat="server" href="~/Account/Login.aspx">Log in</a></li>
                            </ul>
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            <p>
                                Hello, <a runat="server" class="username" href="~/Account/Manage.aspx" title="Manage your account">
                                    <asp:LoginName runat="server" CssClass="username" />
                                </a>!
                                <asp:LoginStatus runat="server" LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/" />
                            </p>
                        </LoggedInTemplate>
                    </asp:LoginView>
                </section>
                <nav>
                    <ul id="menu">
                        <li><a runat="server" href="~/">Home</a></li>
                        <li><a runat="server" href="~/About.aspx">About</a></li>
                        <li><a runat="server" href="~/Contact.aspx">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <div id="body">
        <asp:ContentPlaceHolder runat="server" ID="FeaturedContent" />
        <section class="content-wrapper main-content clear-fix">
            <asp:ContentPlaceHolder runat="server" ID="MainContent" />
        </section>
    </div>
    <footer>
        <div class="content-wrapper">
            <div class="float-left">
                <p>&copy; <%: DateTime.Now.Year %> - My ASP.NET Application</p>
            </div>
        </div>
    </footer>
    </form>
</body>
</html>

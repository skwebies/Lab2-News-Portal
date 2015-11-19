<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="NewsPortal.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News Portal - Login</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Exo:400,700' rel='stylesheet' type='text/css' />
    <meta name="description" content="News Portal Website" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="frmLogin" runat="server">
        <div class="container">
            <div id="logo">

                <h1 class="news"><i class="fa fa-2x fa-globe logoIcon" style="color: #ff6a00;"></i>News <span class="portal">Portal</span></h1>
            </div>
            <!--Login Section Start-->
            <div id="login">
                 <div class="PageTitles">
                    <h2>Login</h2>
                     <asp:Label ID="lblLoginMessage" runat="server" Text=""></asp:Label>
                </div>
                <div class="loginSets">
                    <asp:Label ID="lblUser" CssClass="lblUser" runat="server" Text="User Name: "></asp:Label><br />
                    <i class="fa fa-user"></i>
                    <asp:TextBox ID="txtUser" runat="server" placeholder="Username" TextMode="Email"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtUser"></asp:RequiredFieldValidator>
                    <asp:Label ID="lblPassword" runat="server" CssClass="lblPassword" Text="Password"></asp:Label><br />
                    <i class="fa  fa-key"></i>
                    <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>
                     <p style="text-align:center; margin-top:-10px; font-size:small;"><asp:CheckBox ID="chkRemember" runat="server" Text="Remember Me" TextAlign="Right" /></p>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click"/>
                    <p class="LoginP">Don't have account yet?
                    <asp:HyperLink ID="lbtnRegister" runat="server" NavigateUrl="~/Registration/register.aspx">Register</asp:HyperLink></p>
                </div>
            </div>
            <!--end of login section-->

        </div>
    </form>
</body>
</html>

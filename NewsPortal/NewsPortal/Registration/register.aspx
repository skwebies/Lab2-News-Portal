<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="NewsPortal.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News Portal - Register</title>
    <link rel="stylesheet" type="text/css" href="../style.css" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Exo:400,700' rel='stylesheet' type='text/css' />
    <meta name="description" content="News Portal Website" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="frmRegister" runat="server">
        <div class="container">
            <div id="logo">

                <h1 class="news"><i class="fa fa-2x fa-globe logoIcon" style="color: #ff6a00;"></i>News <span class="portal">Portal</span></h1>
            </div>

            <div class="register">
                <div class="PageTitles">
                    <h2>Register</h2>
                </div>
                <div class="loginSets">
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:"></asp:Label><br />
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:"></asp:Label><br />
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label><br />
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lblAddPassword" runat="server" Text="Password"></asp:Label><br />
                    <asp:TextBox ID="txtAddPassword" runat="server"></asp:TextBox>
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
                    <asp:Button ID="btnReset" runat="server" Text="Reset"  />
                    <p class="LoginP">Already have an account?
                    <asp:HyperLink ID="lbtnLogin" runat="server" NavigateUrl="~/login.aspx">Login</asp:HyperLink></p>
                </div>
            </div>


        </div><!--end of container-->
    </form>
</body>
</html>

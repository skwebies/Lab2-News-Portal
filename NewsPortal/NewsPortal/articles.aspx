<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="NewsPortal.dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard - Administration</title>
    <link rel="stylesheet" type="text/css" href="admin.css" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Exo:400,700' rel='stylesheet' type='text/css' />

</head>
<body>
    <form id="frmDashboard" runat="server">
        <div class="AdminContainer">
            <header>
                <div class="adminLogo">
                    <h1 class="news"><i class="fa fa-globe logoIcon" style="color: #ff6a00;"></i>News <span class="portal">Portal</span></h1>
                </div>
                <nav>
                    <ul>
                        <li>
                            <asp:LinkButton ID="lbtnDash" runat="server" PostBackUrl="~/dashboard.aspx">Dashboard</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnArticles" runat="server" PostBackUrl="~/articles.aspx" CssClass="selected">Articles</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnUsersPage" runat="server" PostBackUrl="~/Users.aspx">Users</asp:LinkButton>
                        </li>
                    </ul>
                </nav>
            </header>

            <article class="post">
                <div id="Content_Post">
                    <asp:TextBox ID="news_title" runat="server" Columns="100"></asp:TextBox><br />
                    <textarea id="content_area" cols="100" rows="10" required="required" aria-expanded="false"></textarea><br />
                    <asp:FileUpload ID="ImgUpload" runat="server" />
                    <asp:DropDownList ID="DropCat" runat="server" ></asp:DropDownList>
                </div>
            </article>

        </div>
    </form>
</body>
</html>

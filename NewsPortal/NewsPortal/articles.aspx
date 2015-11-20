<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="articles.aspx.cs" Inherits="NewsPortal.articles" %>

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
                            <asp:LinkButton ID="lbtnDash" runat="server" OnClick="lbtnDash_Click" >Dashboard</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnArticles" runat="server" CssClass="selected" OnClick="lbtnArticles_Click">Articles</asp:LinkButton>
                        </li>
                        <li>
                            <asp:LinkButton ID="lbtnUsersPage" runat="server" OnClick="lbtnUsersPage_Click"  >Users</asp:LinkButton>
                        </li>
                    </ul>
                </nav>
            </header>

            <div class="post">
                <div id="Content_Post">
                    <asp:Label ID="lblArtticleTitle" runat="server" Text="Title: "></asp:Label>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox><br />
                    <asp:FileUpload ID="fpImage" runat="server" ToolTip="Content Image" /><br />
                    <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" Columns="100" Rows="10"></asp:TextBox><br />
                    
                    <asp:DropDownList ID="ddlCategory" runat="server">
                        <asp:ListItem Enabled="False" Selected="True">Select Category</asp:ListItem>
                        <asp:ListItem>News</asp:ListItem>
                        <asp:ListItem>Entertaintment</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btbPost" runat="server" Text="Post Article" OnClick="btbPost_Click" />


                </div>
                <div class="DisplayContent">
                    <table>
                        <thead>
                            <tr>
                                <td>Title</td>
                                <td>Category</td>
                                <td>Content</td>
                                <td>Image</td>
                                <td>Published On</td>
                            </tr>
                        </thead>
                    <asp:Repeater ID="rptArticle" runat="server">
                        <ItemTemplate>
                            <tbody>
                                <tr runat="server">
                                    <td><asp:Label ID="lblTitle" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "AddTitle") %>'></asp:Label></td>
                                    <td><asp:Label ID="lblCategory" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "AddCategory") %>'></asp:Label></td>
                                    <td><asp:Label ID="lblArticle" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "AddArticle") %>'></asp:Label></td>
                                    <td><img src="Assets/<%# DataBinder.Eval(Container.DataItem, "AddMedia") %>" width="50" /></td>
                                    <td><asp:Label ID="postDate" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "postDate") %>'></asp:Label></td>
                                    


                                </tr>
                            </tbody>
                        </ItemTemplate>


                    </asp:Repeater>
                    </table>
                </div>
            </div>

        </div><!--end of AdminContainer-->
    </form>
</body>
</html>

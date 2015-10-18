<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="NewsPortal.Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard - Users</title>
    <link rel="stylesheet" type="text/css" href="admin.css" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Exo:400,700' rel='stylesheet' type='text/css' />
</head>
<body>
    <form id="frmUsers" runat="server">
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
                            <asp:LinkButton ID="lbtnUsersPage" runat="server" CssClass="selected" PostBackUrl="~/Users.aspx">Users</asp:LinkButton>
                            
                           
                        </li>
                    </ul>
                </nav>
            </header>

            
           <!--User List Display Table--> 
            <table id="userData">
                <thead>
                    <tr>
                        <td>First Name</td>
                        <td>Last Name</td>
                        <td>Email</td>
                        <td>Password</td>
                    </tr>
                </thead>
                <asp:Repeater ID="rptUserList" runat="server" >
                    <ItemTemplate>
                        <tbody>
                            <tr id="UserTable" runat="server">
                                <td>
                                    <asp:Label ID="lblUserFname" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "FirstName") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblUserLname" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "LastName") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblUserEmail" runat="server" Text='<%# DataBinder.Eval(Container.DataItem, "Email") %>'></asp:Label>
                                </td>
                                <td>
                                    <asp:Label ID="lblUserPass" runat="server"  Text='<%# DataBinder.Eval(Container.DataItem, "Password") %>'></asp:Label>
                                </td>


                            </tr>

                        </tbody>

                    </ItemTemplate>



                </asp:Repeater>
                

            </table>


        </div><!--end of AdminContainer-->
    </form>
</body>
</html>

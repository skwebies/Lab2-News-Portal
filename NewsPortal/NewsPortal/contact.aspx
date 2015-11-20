<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="NewsPortal.contact" %>

<!DOCTYPE html>

<html>
<head>
    <title>Contact</title>
    <link href="style.css" type="text/css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
    <link href='https://fonts.googleapis.com/css?family=Exo:400,700' rel='stylesheet' type='text/css' />
    <meta name="description" content="News Portal Website" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div id="logo_home">

                <h1 class="news"><i class="fa fa-2x fa-globe logoIcon" style="color: #ff6a00;"></i>News <span class="portal">Portal</span></h1>
            </div>
            <!--end of logo-->
            <nav>
                <ul>
                    <li><a href="index.aspx">Home</a></li>
                    <li><a href="#">News</a></li>
                    <li><a href="#">Videos</a></li>
                    <li><a href="#">Entertainment</a></li>
                    <li><a href="about.aspx">About Us</a></li>
                    <li><a href="contact.aspx" class="selected">Contact Us</a></li>
                </ul>
            </nav>
            <div class="slideshow">

                <img src="Assets/globe.jpg" alt="Global News" height="350" width="960" />
                <h1>Connecting News World by Media</h1>
            </div>
            <section class="contents">
                <h2>Contact Us</h2>
                <div class="main_content">

                    <!--Contact Form starts here-->
                    <div style="font-family: Arial">

                        <fieldset style="width: 350px">
                            <legend>Contact us</legend>
                            <table>
                                <!--......Name text box.......... -->
                                <tr>
                                    <td>
                                        <b>Name:</b>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtName" Width="200px" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is Required"
                                            ControlToValidate="txtName"
                                            Text="*"
                                            Display="Dynamic"
                                            ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <!--......Email text box.......... -->
                                <tr>
                                    <td>
                                        <b>Email:</b>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtEmail" Width="200px" runat="server" TextMode="Email"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ErrorMessage="Email is Required"
                                            ControlToValidate="txtEmail"
                                            Text="*"
                                            Display="Dynamic"
                                            ForeColor="Red"></asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic"
                                            ErrorMessage="Please enter a valid email" ForeColor="Red" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$">*</asp:RegularExpressionValidator>
                                    </td>
                                </tr>
                                <!--......Subject text box.......... -->
                                <tr>
                                    <td>
                                        <b>Subject:</b>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtSubject" Width="200px" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                            ErrorMessage="Subject is Required"
                                            ControlToValidate="txtSubject"
                                            Text="*"
                                            Display="Dynamic"
                                            ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <!--......Message text box.......... -->
                                <tr>
                                    <td style="vertical-align: top">
                                        <b>Massage:</b>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtMessage" Width="200px" runat="server" Rows="12" TextMode="MultiLine"></asp:TextBox>
                                    </td>

                                    <td style="vertical-align: top">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                            ErrorMessage="Message is Required"
                                            ControlToValidate="txtMessage"
                                            Text="*"
                                            Display="Dynamic"
                                            ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <!--Please fix the following errors Error message 1.Error message 2.----->
                                <tr>
                                    <td colspan="3">
                                        <asp:ValidationSummary HeaderText="Please fix the following errors " ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Label ID="Labell" runat="server" Font-Bold="true"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </div>



                </div>
                <aside class="sidebar_left">
                </aside>

            </section>
            <footer>
            </footer>

        </div>
        <!--end of container-->











    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contactus.aspx.cs" Inherits="NewsPortal.contactus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family:Arial">
            
        <fieldset style="width:350px">
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
                        display="Dynamic"
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
                        display="Dynamic"
                        ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" display="Dynamic"
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
                        display="Dynamic"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <!--......Message text box.......... -->
             <tr>
                <td style="vertical-align:top">
                    <b>Massage:</b>
                    </td>
                <td>
                <asp:TextBox ID="txtMessage" Width="200px" runat="server" Rows="12" TextMode="MultiLine"></asp:TextBox>
                </td>

                <td style="vertical-align:top">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                         ErrorMessage="Message is Required"
                        ControlToValidate="txtMessage"
                        Text="*"
                        display="Dynamic"
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
    
    
    </form>
</body>
</html>

﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registation.aspx.cs" Inherits="NewsPortal.registation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style10 {
            width: 134px;
            text-align: right;
        }
        .auto-style11 {
            width: 134px;
            text-align: left;
        }
        .auto-style13 {
            width: 134px;
        }
        .auto-style14 {
            width: 206px;
        }
        .auto-style16 {
            width: 134px;
            text-align: left;
            height: 34px;
        }
        .auto-style18 {
            width: 206px;
            height: 34px;
        }
        .auto-style20 {
            width: 176px;
            height: 34px;
        }
        .auto-style21 {
            width: 84px;
        }
        .auto-style22 {
            width: 176px;
        }
        .auto-style23 {
            width: 134px;
            text-align: left;
            height: 42px;
        }
        .auto-style24 {
            width: 176px;
            height: 42px;
        }
        .auto-style25 {
            width: 206px;
            height: 42px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style11">User Name:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="User name Required" ControlToValidate="TextBoxUN" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style23">E-Mail:</td>
                <td class="auto-style24">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email id Required" ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter the valid email id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style25">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Password:</td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password is Required" ControlToValidate="TextBoxPass" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">Confirm Password:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBoxRpass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Confirm password Required" ControlToValidate="TextBoxRpass" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRpass" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                    
                </td>
                <td class="auto-style18">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style11">Country</td>
                <td class="auto-style22">
                    <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
                        
                        <asp:ListItem>Select Country</asp:ListItem>
                        <asp:ListItem>USA</asp:ListItem>
                        <asp:ListItem>UK</asp:ListItem>
                        <asp:ListItem>SWEDEN</asp:ListItem>
                        <asp:ListItem>FINLAND</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Select country Required" ControlToValidate="DropDownListCountry" ForeColor="Red" InitialValue="Select Country"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style22">
                    <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
&nbsp;<input id="Reset1" class="auto-style21" type="reset" value="reset" /></td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
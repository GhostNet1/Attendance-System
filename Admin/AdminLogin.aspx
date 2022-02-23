<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Attendance01.Admin.AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Admin.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 245px;
        }
    </style>

</head>
<body>
    <form id="form5" runat="server">
    
    <div id="aheader">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Image1.PNG" 
            Height="118px" Width="626px" />
    </div>
    <div id="alogin">
        <table class="style1">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="atitle">
                    Admin Login Panel</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="txtuname" runat="server" placeholder="Enter UserName" 
                        CssClass="ltxt"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:TextBox ID="txtupass" runat="server" placeholder="Enter Password" 
                        CssClass="ltxt" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Button ID="btnlogin" runat="server" CssClass="lbtn" Text="Login" 
                        onclick="btnlogin_Click" />
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="False">Incorrect User input</asp:Label>
                </td>
            </tr>
            <tr>
                <td style="text-align: center">
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Default.aspx">Back to Home</asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>

    </form>
</body>
</html>

<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="Profile1.aspx.cs" Inherits="Attendance01.Staff.Profile1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <style type="text/css">

        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 561px;
        }
            .style7
            {
                width: 223px;
            }
            .style8
            {
                width: 68px;
            }
            .style11
            {
                height: 23px;
                width: 487px;
            }
            .style12
            {
                width: 487px;
            }
            .style13
            {
                width: 74px;
            }
            .style14
            {
                height: 23px;
                width: 74px;
            }
            .style15
            {
                width: 73px;
            }
            .style16
            {
                height: 23px;
                width: 73px;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table class="tbl">
        <tr>
            <td class="tblhead" colspan="4">
                My Profile</td>
        </tr>
        <tr>
            <td colspan="4">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="color: #FF0000; font-weight: normal; font-size: medium; font-family: Cambria;" 
                align="right" class="style15">
                Name :
                </td>
            <td style="color: #FF0000; font-weight: bold; font-size: medium; font-family: Cambria;" 
                class="style12">
                <asp:Label ID="lblname" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td style="color: #FF0000; font-weight: bold; font-size: medium; font-family: Cambria;" 
                class="style13">
                &nbsp;</td>
            <td style="color: #FF0000; font-weight: bold; font-size: medium; font-family: Cambria;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16" 
                style="color: #FF0000; font-weight: normal; font-size: medium; font-family: Cambria;" 
                align="right">
                ID :&nbsp;</td>
            <td class="style11" 
                style="color: #FF0000; font-weight: bold; font-size: medium; font-family: Cambria;">
                <asp:Label ID="lblID" runat="server" ForeColor="Black"></asp:Label>
            </td>
            <td class="style14" 
                style="color: #FF0000; font-weight: bold; font-size: medium; font-family: Cambria;">
                &nbsp;</td>
            <td class="style5" 
                style="color: #FF0000; font-weight: bold; font-size: medium; font-family: Cambria;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                <table class="style6">
                    <tr>
                        <td class="style8" align="right" style="color: #FF0000">
                            Email :</td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td class="style7">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style8" align="right" style="color: #FF0000">
                            Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                        <td rowspan="4" class="style7">
                            <asp:Image ID="Img" runat="server" Height="125px" Width="112px" />
                        </td>
                        <td rowspan="4">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="btnUpdate" runat="server" CssClass="btn" Text="Update" 
                                Height="32px" Width="64px" onclick="btnUpdate_Click" />
                        </td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td class="style7">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="4">
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

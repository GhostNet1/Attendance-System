<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="Attendance01.Student.MyProfile" %>
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
        width: 389px;
    }
    .style8
    {
        height: 23px;
        width: 389px;
    }
    .style9
    {
        width: 95px;
    }
    .style10
    {
        height: 23px;
        width: 95px;
    }
    .style11
    {
        text-align: right;
        color: #8506A9;
        width: 82px;
    }
    .style12
    {
        width: 82px;
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
        <td style="color: #8506A9; font-weight: bold; font-size: large" align="right" 
            class="style9">
&nbsp;&nbsp;&nbsp;&nbsp; Name :
        </td>
        <td class="style7">
                <asp:Label ID="lblname" runat="server"></asp:Label>
        </td>
        <td style="color: #8506A9; font-weight: bold; font-size: large" class="style7">
            &nbsp;</td>
        <td style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" style="color: #8506A9; font-weight: bold; font-size: large" 
            align="right">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ID :
        </td>
        <td class="style8">
            <asp:Label ID="lblID" runat="server"></asp:Label>
        </td>
        <td class="style8" style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
        <td class="style5" style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" style="color: #8506A9; font-weight: bold; font-size: large" 
            align="right">
            Program :
        </td>
        <td class="style8">
            <asp:Label ID="lblProgram" runat="server"></asp:Label>
        </td>
        <td class="style8" style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
        <td class="style5" style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" style="color: #8506A9; font-weight: bold; font-size: large" 
            align="right">
            Semester :
        </td>
        <td class="style8">
            <asp:Label ID="lblSemester" runat="server"></asp:Label>
        </td>
        <td class="style8" style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
        <td class="style5" style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10" style="color: #8506A9; font-weight: bold; font-size: large" 
            align="right">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Level :
        </td>
        <td class="style8">
            <asp:Label ID="lblLevel" runat="server"></asp:Label>
        </td>
        <td class="style8" style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
        <td class="style5" style="color: #8506A9; font-weight: bold; font-size: large">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5" colspan="4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style5" colspan="4">
            <table class="style6">
                <tr>
                    <td class="style11" style="color: #8506A9; font-weight: bold; font-size: large">
                            Email :</td>
                    <td>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="160px" />
                        <asp:Button ID="btnchange" runat="server" CssClass="btn" Text="ADD" 
                            Width="50px" />
                    </td>
                </tr>
                <tr>
                    <td class="style11" style="color: #8506A9; font-weight: bold; font-size: large">
                            Mobile :</td>
                    <td>
                        <asp:TextBox ID="txtmobile" runat="server" CssClass="txt"></asp:TextBox>
                    </td>
                    <td rowspan="4">
                        <asp:Image ID="Imgprofile" runat="server" Height="125px" Width="112px" 
                            ImageUrl="~/images/images.png" />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnupdate" runat="server" CssClass="btn" Text="Update" />
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                            &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                            &nbsp;</td>
                </tr>
                <tr>
                    <td class="style12">
                            &nbsp;</td>
                    <td>
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

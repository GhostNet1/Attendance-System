<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Attendance01.Admin.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">

    .style3
    {
        height: 19px;
    }
    .style2
    {
        width: 511px;
        height: 324px;
    }
    .style4
    {
        color: #FF3300;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD Student</td>
    </tr>
    <tr>
        <td class="style3">
        </td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style2">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style4">
                        <asp:Label ID="lblsuccess" runat="server" Font-Italic="True" 
                            Text="Successfully Added!!"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Student ID :</td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server" CssClass="txt" width="217px" 
                            Height="26px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Student Name : </td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" CssClass="txt" width="217px" 
                            height="26px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Mobile No :</td>
                    <td>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="txt" width="217px" 
                            height="26px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl" style="text-align: right">
                        Email :</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" width="217px" 
                            height="26px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Gender :</td>
                    <td>
                        <asp:DropDownList ID="DropGender" runat="server" height="22px" width="217px">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Program :</td>
                    <td>
                        <asp:DropDownList ID="DropProgram" runat="server" height="22px" width="217px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>AF - Accounting &amp; Finance</asp:ListItem>
                            <asp:ListItem>BA - Business Administration</asp:ListItem>
                            <asp:ListItem>CE - Civil Engineering</asp:ListItem>
                            <asp:ListItem>CE - Computer Engineering</asp:ListItem>
                            <asp:ListItem>CS - Computer Science</asp:ListItem>
                            <asp:ListItem>EEE - Electrical, Electronics Engineering</asp:ListItem>
                            <asp:ListItem>IT - Information Technology</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Semester :</td>
                    <td>
                        <asp:DropDownList ID="DropSemester" runat="server" height="22px" width="217px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Level :</td>
                    <td>
                        <asp:DropDownList ID="DropLevel" runat="server" height="22px" width="217px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>100L</asp:ListItem>
                            <asp:ListItem>200L</asp:ListItem>
                            <asp:ListItem>300L</asp:ListItem>
                            <asp:ListItem>400L</asp:ListItem>
                            <asp:ListItem>500L</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl" style="text-align: right">
                        Username :</td>
                    <td>
                        <asp:TextBox ID="txtUname" runat="server" CssClass="txt" width="217px" 
                            height="26px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl" style="text-align: right">
                        Password :</td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" CssClass="txt" height="26px" 
                            width="217px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD" 
                            onclick="btnadd_Click1" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
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
        <td>
            &nbsp;</td>
    </tr>
</table>

</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="Attendance01.Admin.AddStaff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style3
    {
        height: 19px;
    }
    .style2
    {
        width: 394px;
    }
    .style4
    {
        color: #004AE6;
        text-align: right;
        height: 23px;
    }
    .style5
    {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                ADD Staff</td>
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
                        <td>
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Staff ID :</td>
                        <td>
                            <asp:TextBox ID="txtID" runat="server" CssClass="txt" height="22px" 
                                width="217px"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Name :</td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server" CssClass="txt" height="22px" 
                                width="217px"></asp:TextBox>
                        </td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Mobile :</td>
                        <td>
                            <asp:TextBox ID="txtMobile" runat="server" CssClass="txt" height="22px" 
                                width="217px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Email : </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="txt" height="22px" 
                                width="217px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style4">
                            Gender : </td>
                        <td class="style5">
                            <asp:DropDownList ID="DropGender" runat="server" height="22px" width="217px">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style5">
                            </td>
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
                        <td class="lbl">
                            User Name :</td>
                        <td>
                            <asp:TextBox ID="txtUname" runat="server" CssClass="txt" height="22px" 
                                width="217px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Password : </td>
                        <td>
                            <asp:TextBox ID="txtPass" runat="server" CssClass="txt" TextMode="Password" 
                                Width="217px" height="22px"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            Course Code :</td>
                        <td>
                            <asp:DropDownList ID="DropCCode" runat="server" DataSourceID="SqlDataSource1" 
                                DataTextField="Course_Code" DataValueField="Course_Code" height="22px" 
                                width="217px">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                                SelectCommand="SELECT [Course_Code] FROM [Courses]"></asp:SqlDataSource>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="lbl">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl" runat="server" Font-Italic="True" ForeColor="#FF3300">Added Successfully!</asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                        &nbsp;</td>
                        <td>
                            <asp:Button ID="btnadd" runat="server" CssClass="btn" Text="ADD" 
                                onclick="btnadd_Click" />
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

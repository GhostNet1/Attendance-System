<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Attendance01.Student.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead" colspan="4">
            Course Registration</td>
    </tr>
    <tr>
        <td colspan="4">
                &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Student ID :</td>
        <td>
            <asp:Label ID="LblID" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Student Name :</td>
        <td>
            <asp:Label ID="LblName" runat="server"></asp:Label>
        </td>
        <td>
            &nbsp;</td>
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
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Courses :</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            1.</td>
        <td>
            <asp:DropDownList ID="Drop1" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="Course_Code" DataValueField="Course_Code" Height="22px" 
                Width="204px">
                <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                SelectCommand="SELECT [Course_Code] FROM [Courses]"></asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            2. </td>
        <td>
            <asp:DropDownList ID="Drop2" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="Course_Code" DataValueField="Course_Code" height="22px" 
                width="204px">
                <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            3. </td>
        <td>
            <asp:DropDownList ID="Drop3" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="Course_Code" DataValueField="Course_Code" height="22px" 
                width="204px">
                <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            4. </td>
        <td>
            <asp:DropDownList ID="Drop4" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="Course_Code" DataValueField="Course_Code" height="22px" 
                width="204px">
                <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            5.</td>
        <td>
            <asp:DropDownList ID="Drop5" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="Course_Code" DataValueField="Course_Code" height="22px" 
                width="204px">
                <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            6.</td>
        <td>
            <asp:DropDownList ID="Drop6" runat="server" DataSourceID="SqlDataSource2" 
                DataTextField="Course_Code" DataValueField="Course_Code" height="22px" 
                width="204px">
                <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            </td>
        <td class="style4">
            <asp:Label ID="Lbl" runat="server" ForeColor="#FF3300"></asp:Label>
        </td>
        <td class="style4">
            </td>
        <td class="style4">
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="BtnReg" runat="server" CssClass="btn" Height="34px" 
                onclick="BtnReg_Click" Text="Register" Width="93px" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

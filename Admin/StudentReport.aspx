<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="StudentReport.aspx.cs" Inherits="Attendance01.Admin.StudentReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">



    .style3
    {
        height: 19px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Student Report</td>
    </tr>
    <tr>
        <td class="style3">
            <asp:Label ID="Lbl" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="style3">
            <asp:GridView ID="GVStudent" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataSourceID="SqlDataSource1" 
                Font-Size="Smaller" ForeColor="#333333" GridLines="None" 
                DataKeyNames="Student_ID" Width="658px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                        SortExpression="Student_ID" ReadOnly="True" />
                    <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                        SortExpression="Student_Name" />
                    <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                        SortExpression="MobileNo" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="Email" HeaderText="Email" 
                        SortExpression="Email" />
                    <asp:BoundField DataField="Username" HeaderText="Username" 
                        SortExpression="Username" />
                    <asp:BoundField DataField="Password" HeaderText="Password" 
                        SortExpression="Password" />
                    <asp:BoundField DataField="Program" HeaderText="Program" 
                        SortExpression="Program" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" 
                        SortExpression="Semester" />
                    <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Student_Info]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

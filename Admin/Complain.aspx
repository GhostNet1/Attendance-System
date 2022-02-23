<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Complain.aspx.cs" Inherits="Attendance01.Admin.Complain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Complain Module</td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Complaint]"></asp:SqlDataSource>
            <asp:GridView ID="GVFeed" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                Height="159px" Width="656px" Font-Size="Smaller" DataKeyNames="CID">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="CID" HeaderText="CID" 
                        SortExpression="CID" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                    <asp:BoundField DataField="About" HeaderText="About" 
                        SortExpression="About" />
                    <asp:BoundField DataField="Message" HeaderText="Message" 
                        SortExpression="Message" />
                    <asp:BoundField DataField="Reply" HeaderText="Reply" SortExpression="Reply" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

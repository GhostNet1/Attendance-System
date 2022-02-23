<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="StudentReport.aspx.cs" Inherits="Attendance01.Staff.StudentReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style4
    {
        width: 731px;
        height: 207px;
    }
    .style21
    {
        width: 627px;
        height: 23px;
    }
    .style22
    {
        height: 258px;
    }
    .style24
    {
        width: 351px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead" colspan="4">
            STUDENT REPORT</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td class="style24">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="right" style="color: #FF0000">
            Select Program :</td>
        <td>
            <asp:DropDownList ID="DropProgram" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="Program" DataValueField="Program" 
                Height="23px" Width="187px">
                <asp:ListItem>--Select--</asp:ListItem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                SelectCommand="SELECT [Program] FROM [Student_Info]"></asp:SqlDataSource>
        </td>
        <td class="style24">
            <asp:Button ID="BtnSelect" runat="server" CssClass="btn" Height="29px" 
                Text="Select" Width="77px" onclick="BtnSelect_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
&nbsp;
            <asp:Label ID="lbl" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="GVStudent" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Student_ID" 
                        DataSourceID="SqlDataSource1" Font-Size="Smaller" ForeColor="#333333" 
                        GridLines="None" Width="724px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" ReadOnly="True" 
                                SortExpression="Student_ID" />
                            <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                                SortExpression="Student_Name" />
                            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                                SortExpression="MobileNo" />
                            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                                SortExpression="Gender" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Program" HeaderText="Program" 
                                SortExpression="Program" />
                            <asp:BoundField DataField="Semester" HeaderText="Semester" 
                                SortExpression="Semester" />
                            <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                        
                        SelectCommand="SELECT [Student_ID], [Student_Name], [MobileNo], [Gender], [Email], [Program], [Semester], [Level] FROM [Student_Info] WHERE ([Program] = @Program)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropProgram" Name="Program" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <table align="left" class="style4">
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style22" colspan="4">
            </td>
    </tr>
</table>
</asp:Content>

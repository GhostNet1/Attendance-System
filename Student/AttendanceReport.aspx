<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="AttendanceReport.aspx.cs" Inherits="Attendance01.Student.AttendanceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

    .style4
    {
        width: 450px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                My Attendance Report</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table class="style4">
                    <tr>
                        <td class="lbl">
                            Select Course&nbsp; :</td>
                        <td>
                            <asp:DropDownList ID="DropCourse" runat="server" CssClass="txt" 
                                DataSourceID="SqlDataSource2" DataTextField="Course_Code" 
                                DataValueField="Course_Code">
                                <asp:ListItem>SELECT</asp:ListItem>
                                <asp:ListItem Value="Jan">January</asp:ListItem>
                                <asp:ListItem Value="Feb">February</asp:ListItem>
                                <asp:ListItem Value="Mar">March</asp:ListItem>
                                <asp:ListItem Value="Apr">April</asp:ListItem>
                                <asp:ListItem>May</asp:ListItem>
                                <asp:ListItem Value="Jun">June</asp:ListItem>
                                <asp:ListItem Value="Jul">July</asp:ListItem>
                                <asp:ListItem Value="Aug">August</asp:ListItem>
                                <asp:ListItem Value="Sep">September</asp:ListItem>
                                <asp:ListItem Value="Oct">October</asp:ListItem>
                                <asp:ListItem Value="Nov">November</asp:ListItem>
                                <asp:ListItem Value="Dec">December</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                                SelectCommand="SELECT [Course_Code] FROM [Courses]"></asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:Button ID="BtnReport" runat="server" CssClass="btn" Text="Report" 
                                onclick="BtnReport_Click" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbl" runat="server" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GVReport" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" 
                    CellPadding="3" GridLines="None" 
                    style="text-align: center" Width="720px" 
                    DataSourceID="SqlDataSource1" Font-Size="Small" CellSpacing="1">
                    <Columns>
                        <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                            SortExpression="Student_ID" />
                        <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" 
                            SortExpression="Course_Code" />
                        <asp:BoundField DataField="Date" HeaderText="Date" 
                            SortExpression="Date" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                    OldValuesParameterFormatString="original_{0}" 
                    
                    SelectCommand="SELECT [Student_ID], [Course_Code], [Date], [Status] FROM [Attendance] WHERE (([Course_Code] = @Course_Code) AND ([Student_ID] = @Student_ID))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropCourse" Name="Course_Code" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:SessionParameter Name="Student_ID" SessionField="Username" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

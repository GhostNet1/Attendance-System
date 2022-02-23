<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="Attend.aspx.cs" Inherits="Attendance01.Staff.Attend" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .style4
    {
        width: 503px;
    }
    .style7
    {
            text-align: right;
            color: Red;
            width: 128px;
        }
    .style6
    {
            width: 52px;
        }
    .style5
    {
            width: 56px;
        }
        .style8
        {
            width: 128px;
        }
        .style9
        {
            width: 100px;
        }
        .style10
        {
            height: 341px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
            ADD ATTENDANCE</td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
        <tr>
            <td>
                <table align="left" class="style4">
                    <tr>
                        <td class="style7">
                        &nbsp;</td>
                        <td class="style6">
                        &nbsp;</td>
                        <td class="style5">
                        &nbsp;</td>
                        <td>
                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style7">
                        Select Course :
                        </td>
                        <td class="style6">
                            <asp:DropDownList ID="DropCourse" runat="server" CssClass="txt" 
                            DataSourceID="SqlDataSource1" DataTextField="Course_Code" 
                            DataValueField="Course_Code" Height="22px" Width="165px">
                                <asp:ListItem>--Select--</asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                            SelectCommand="SELECT [Course_Code] FROM [Courses]"></asp:SqlDataSource>
                        </td>
                        <td class="style5">
                            <asp:Button ID="BtnSelect" runat="server" CssClass="btn" onclick="BtnSelect_Click" 
                            Text="Select" Height="28px" Width="75px" />
                        </td>
                        <td>
                            <asp:Label ID="lblcnt" runat="server" ForeColor="Red"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style8">
                <asp:Label ID="lblatt" runat="server"></asp:Label>
                        </td>
                        <td class="style6">
                        &nbsp;</td>
                        <td class="style5">
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
        <tr>
            <td class="style10">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <table class="style9">
                            <tr>
                                <td valign="top">
                                    <asp:GridView ID="GVAttend" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" ForeColor="#333333" GridLines="None" Width="425px" 
                                        DataSourceID="SqlDataSource2" Font-Size="Small">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                                                SortExpression="Student_Name" />
                                            <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                                                SortExpression="Student_ID" />
                                            <asp:TemplateField HeaderText="Attendance">
                                                <ItemTemplate>
                                                    <asp:DropDownList ID="DropAtt" runat="server">
                                                        <asp:ListItem>Present</asp:ListItem>
                                                        <asp:ListItem>Absent</asp:ListItem>
                                                    </asp:DropDownList>
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem>Present</asp:ListItem>
                                                <asp:ListItem>Absent</asp:ListItem>
                                            </asp:DropDownList>
                                        </EmptyDataTemplate>
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
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                                        OldValuesParameterFormatString="original_{0}" 
                                        
                                        SelectCommand="SELECT DISTINCT [Student_Name], [Student_ID] FROM [Register] WHERE (([Course1] = @Course1) OR ([Course2] = @Course2) OR ([Course3] = @Course3) OR ([Course4] = @Course4) OR ([Course5] = @Course5) OR ([Course6] = @Course6))">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropCourse" Name="Course1" 
                                                PropertyName="SelectedValue" Type="String" />
                                            <asp:ControlParameter ControlID="DropCourse" Name="Course2" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="DropCourse" Name="Course3" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="DropCourse" Name="Course4" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="DropCourse" Name="Course5" 
                                                PropertyName="SelectedValue" />
                                            <asp:ControlParameter ControlID="DropCourse" Name="Course6" 
                                                PropertyName="SelectedValue" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                                <td valign="bottom">
                                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                                    ShowGridLines="True" Width="225px">
                                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                        <OtherMonthDayStyle ForeColor="#CC9966" />
                                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                        <SelectorStyle BackColor="#FFCC66" />
                                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                        ForeColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    </asp:Calendar>
                                    <asp:Button ID="btnaddatt" runat="server" CssClass="btn" Font-Bold="True" 
                                    Font-Size="Medium" Height="45px" 
                                    Text="ADD Attendance" Width="225px" onclick="btnaddatt_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                    <br />
                </asp:MultiView>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="AttendanceReport.aspx.cs" Inherits="Attendance01.Staff.AttendanceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style4
    {
        width: 728px;
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
        .style9
        {
        }
        .style11
        {
            width: 126px;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
                Attendance Reports</td>
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
                        Select Course :
                        </td>
                    <td class="style6">
                        <asp:DropDownList ID="DropCourse" runat="server" CssClass="txt" 
                                DataSourceID="SqlDataSource2" DataTextField="Course_Code" 
                                DataValueField="Course_Code" Height="24px" Width="183px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                                SelectCommand="SELECT [Course_Code] FROM [Courses]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:Button ID="BtnSelect" runat="server" CssClass="btn" 
                            Text="Select" Height="31px" Width="72px" onclick="BtnSelect_Click" />
                    </td>
                    <td class="style9" rowspan="5">
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                            BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                            ShowGridLines="True" style="margin-left: 86px" Width="220px">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style11">
                        <asp:Label ID="lblcnt" runat="server"></asp:Label>
                    </td>
                    <td class="style9">
                            &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style11">
                            &nbsp;</td>
                    <td class="style9">
                            &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style11">
                            &nbsp;</td>
                    <td class="style9">
                            &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td class="style11">
                            &nbsp;</td>
                    <td class="style9">
                            &nbsp;</td>
                </tr>
                </table>
        </td>
    </tr>
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConflictDetection="CompareAllValues" 
                        ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                        DeleteCommand="DELETE FROM [Attendance] WHERE [Att_ID] = @original_Att_ID AND (([Student_ID] = @original_Student_ID) OR ([Student_ID] IS NULL AND @original_Student_ID IS NULL)) AND (([Course_Code] = @original_Course_Code) OR ([Course_Code] IS NULL AND @original_Course_Code IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Att_By] = @original_Att_By) OR ([Att_By] IS NULL AND @original_Att_By IS NULL))" 
                        InsertCommand="INSERT INTO [Attendance] ([Student_ID], [Course_Code], [Date], [Status], [Student_Name], [Att_By]) VALUES (@Student_ID, @Course_Code, @Date, @Status, @Student_Name, @Att_By)" 
                        OldValuesParameterFormatString="original_{0}" 
                        SelectCommand="SELECT Att_ID, Student_ID, Student_Name, Course_Code, Date, Status, Att_By FROM Attendance WHERE (Course_Code = @Course_Code) AND (Date = @Date)" 
                        
                        UpdateCommand="UPDATE [Attendance] SET [Student_ID] = @Student_ID, [Course_Code] = @Course_Code, [Date] = @Date, [Status] = @Status, [Student_Name] = @Student_Name, [Att_By] = @Att_By WHERE [Att_ID] = @original_Att_ID AND (([Student_ID] = @original_Student_ID) OR ([Student_ID] IS NULL AND @original_Student_ID IS NULL)) AND (([Course_Code] = @original_Course_Code) OR ([Course_Code] IS NULL AND @original_Course_Code IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Status] = @original_Status) OR ([Status] IS NULL AND @original_Status IS NULL)) AND (([Student_Name] = @original_Student_Name) OR ([Student_Name] IS NULL AND @original_Student_Name IS NULL)) AND (([Att_By] = @original_Att_By) OR ([Att_By] IS NULL AND @original_Att_By IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_Att_ID" Type="Int32" />
                            <asp:Parameter Name="original_Student_ID" Type="String" />
                            <asp:Parameter Name="original_Course_Code" Type="String" />
                            <asp:Parameter Name="original_Date" Type="String" />
                            <asp:Parameter Name="original_Status" Type="String" />
                            <asp:Parameter Name="original_Student_Name" Type="String" />
                            <asp:Parameter Name="original_Att_By" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Student_ID" Type="String" />
                            <asp:Parameter Name="Course_Code" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="Student_Name" Type="String" />
                            <asp:Parameter Name="Att_By" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropCourse" Name="Course_Code" 
                                PropertyName="SelectedValue" Type="String" />
                            <asp:ControlParameter ControlID="Calendar1" Name="Date" 
                                PropertyName="SelectedDate" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Student_ID" Type="String" />
                            <asp:Parameter Name="Course_Code" Type="String" />
                            <asp:Parameter Name="Date" Type="String" />
                            <asp:Parameter Name="Status" Type="String" />
                            <asp:Parameter Name="Student_Name" Type="String" />
                            <asp:Parameter Name="Att_By" Type="String" />
                            <asp:Parameter Name="original_Att_ID" Type="Int32" />
                            <asp:Parameter Name="original_Student_ID" Type="String" />
                            <asp:Parameter Name="original_Course_Code" Type="String" />
                            <asp:Parameter Name="original_Date" Type="String" />
                            <asp:Parameter Name="original_Status" Type="String" />
                            <asp:Parameter Name="original_Student_Name" Type="String" />
                            <asp:Parameter Name="original_Att_By" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GVAttend" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="Att_ID" DataSourceID="SqlDataSource1" 
                        Font-Size="Small" ForeColor="#333333" GridLines="Vertical" Width="729px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                                SortExpression="Student_ID" />
                            <asp:BoundField DataField="Student_Name" HeaderText="Student_Name" 
                                SortExpression="Student_Name" />
                            <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" 
                                SortExpression="Course_Code" />
                            <asp:BoundField DataField="Date" HeaderText="Date" 
                                SortExpression="Date" />
                            <asp:BoundField DataField="Status" HeaderText="Status" 
                                SortExpression="Status" />
                            <asp:BoundField DataField="Att_By" HeaderText="Att_By" 
                                SortExpression="Att_By" />
                        </Columns>
                        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFFBD6" Font-Size="Small" ForeColor="#333333" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        <SortedAscendingCellStyle BackColor="#FDF5AC" />
                        <SortedAscendingHeaderStyle BackColor="#4D0000" />
                        <SortedDescendingCellStyle BackColor="#FCF6C0" />
                        <SortedDescendingHeaderStyle BackColor="#820000" />
                    </asp:GridView>
                    <br />
                </asp:View>
            </asp:MultiView>
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

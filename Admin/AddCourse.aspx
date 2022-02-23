<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="Attendance01.Admin.AddCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


    .style3
    {
        height: 19px;
    }
    .style2
    {
        width: 411px;
    }
        .style6
        {
            width: 68px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead" colspan="5">
                ADD Course</td>
    </tr>
    <tr>
        <td class="style3" colspan="5">
        </td>
    </tr>
    <tr>
        <td colspan="5">
            <table align="center" class="style2">
                <tr>
                    <td class="lbl">
                        Course Title :</td>
                    <td>
                        <asp:TextBox ID="txtCourseTitle" runat="server" CssClass="txt" height="22px" 
                                width="220px"></asp:TextBox>
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
                    <td class="lbl">
                            Course Code :</td>
                    <td>
                        <asp:TextBox ID="txtCourseCode" runat="server" CssClass="txt" height="22px" 
                                width="220px"></asp:TextBox>
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
                    <td class="lbl">
                        Level :</td>
                    <td>
                        <asp:DropDownList ID="DropLevel" runat="server" height="22px" width="220px">
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
                    <td class="lbl">
                        Department :</td>
                    <td>
                        <asp:DropDownList ID="DropDept" runat="server" height="22px" width="220px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>AF - Accounting &amp; Finance</asp:ListItem>
                            <asp:ListItem>BA - Business Administration</asp:ListItem>
                            <asp:ListItem>CE - Computer Engineering</asp:ListItem>
                            <asp:ListItem>CS - Computer Science</asp:ListItem>
                            <asp:ListItem>IT - Information Technology</asp:ListItem>
                            <asp:ListItem>CE - Civil Engineering</asp:ListItem>
                            <asp:ListItem>EEE - Electrical &amp; Electronics Engineering</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
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
            </table>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="Course_Code" DataSourceID="SqlDataSource1" 
                Font-Size="Small" ForeColor="#333333" GridLines="None" style="margin-left: 0px" 
                Width="526px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Course_Code" HeaderText="Course_Code" 
                        ReadOnly="True" SortExpression="Course_Code" />
                    <asp:BoundField DataField="Course_Title" HeaderText="Course_Title" 
                        SortExpression="Course_Title" />
                    <asp:BoundField DataField="Level" HeaderText="Level" SortExpression="Level" />
                    <asp:BoundField DataField="Department" HeaderText="Department" 
                        SortExpression="Department" />
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
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                DeleteCommand="DELETE FROM [Courses] WHERE [Course_Code] = @original_Course_Code AND (([Course_Title] = @original_Course_Title) OR ([Course_Title] IS NULL AND @original_Course_Title IS NULL)) AND (([Level] = @original_Level) OR ([Level] IS NULL AND @original_Level IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL))" 
                InsertCommand="INSERT INTO [Courses] ([Course_Code], [Course_Title], [Level], [Department]) VALUES (@Course_Code, @Course_Title, @Level, @Department)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [Courses]" 
                
                UpdateCommand="UPDATE [Courses] SET [Course_Title] = @Course_Title, [Level] = @Level, [Department] = @Department WHERE [Course_Code] = @original_Course_Code AND (([Course_Title] = @original_Course_Title) OR ([Course_Title] IS NULL AND @original_Course_Title IS NULL)) AND (([Level] = @original_Level) OR ([Level] IS NULL AND @original_Level IS NULL)) AND (([Department] = @original_Department) OR ([Department] IS NULL AND @original_Department IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Course_Code" Type="String" />
                    <asp:Parameter Name="original_Course_Title" Type="String" />
                    <asp:Parameter Name="original_Level" Type="String" />
                    <asp:Parameter Name="original_Department" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Course_Code" Type="String" />
                    <asp:Parameter Name="Course_Title" Type="String" />
                    <asp:Parameter Name="Level" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Course_Title" Type="String" />
                    <asp:Parameter Name="Level" Type="String" />
                    <asp:Parameter Name="Department" Type="String" />
                    <asp:Parameter Name="original_Course_Code" Type="String" />
                    <asp:Parameter Name="original_Course_Title" Type="String" />
                    <asp:Parameter Name="original_Level" Type="String" />
                    <asp:Parameter Name="original_Department" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

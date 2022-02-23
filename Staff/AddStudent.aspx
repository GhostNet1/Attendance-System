<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Attendance01.Staff.AddStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style4
    {
        width: 731px;
        height: 207px;
    }
    .style17
    {
        text-align: right;
        color: Red;
        width: 243px;
        height: 23px;
    }
    .style18
    {
        width: 243px;
        height: 23px;
    }
    .style19
    {
            text-align: right;
            color: Red;
            width: 17px;
            height: 23px;
        }
    .style20
    {
            width: 17px;
            height: 23px;
        }
    .style21
    {
            width: 338px;
            height: 23px;
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            ADD NEW STUDENT DATA</td>
    </tr>
    <tr>
        <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
    </tr>
    <tr>
        <td>
            <table align="left" class="style4">
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        Student ID :
                    </td>
                    <td class="style21">
                        <asp:TextBox ID="TxtID" runat="server" Height="25px" Width="196px"></asp:TextBox>
                    </td>
                    <td class="style18">
                        <asp:Label ID="lblcnt" runat="server" Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        Student Name :
                    </td>
                    <td class="style21">
                        <asp:TextBox ID="TxtName" runat="server" Height="25px" Width="196px"></asp:TextBox>
                    </td>
                    <td class="style18">
                        <asp:Label ID="lblstudent" runat="server" Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        Mobile :</td>
                    <td class="style21">
                        <asp:TextBox ID="TxtMobile" runat="server" Height="25px" Width="196px"></asp:TextBox>
                    </td>
                    <td class="style18">
                        <asp:Label ID="lblspace" runat="server" Font-Size="Small"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        Email :</td>
                    <td class="style21">
                        <asp:TextBox ID="TxtEmail" runat="server" Height="25px" Width="196px"></asp:TextBox>
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        Gender :</td>
                    <td class="style21">
                        <asp:DropDownList ID="DropGender" runat="server" Height="25px" width="217px">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style17">
                        Program :</td>
                    <td class="style21">
                        <asp:DropDownList ID="DropProgram" runat="server" height="22px" width="217px">
                            <asp:ListItem>Select Program...</asp:ListItem>
                            <asp:ListItem>Accounting</asp:ListItem>
                            <asp:ListItem>Business Administration (BA)</asp:ListItem>
                            <asp:ListItem>Civil Engineering (CE)</asp:ListItem>
                            <asp:ListItem>Computer Engineering (CE)</asp:ListItem>
                            <asp:ListItem>Computer Science (CS)</asp:ListItem>
                            <asp:ListItem>Electrical Engineering (EEE)</asp:ListItem>
                            <asp:ListItem>Information Technology (IT)</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style17">
                        Semester :</td>
                    <td class="style21">
                        <asp:DropDownList ID="DropSemester" runat="server" height="22px" width="217px">
                            <asp:ListItem>Select Semester...</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style17">
                        Level :</td>
                    <td class="style21">
                        <asp:DropDownList ID="DropLevel" runat="server" height="22px" width="217px">
                            <asp:ListItem>Select Level...</asp:ListItem>
                            <asp:ListItem>100L</asp:ListItem>
                            <asp:ListItem>200L</asp:ListItem>
                            <asp:ListItem>300L</asp:ListItem>
                            <asp:ListItem>400L</asp:ListItem>
                            <asp:ListItem>500L</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        Username :</td>
                    <td class="style21">
                        <asp:TextBox ID="TxtUname" runat="server" Height="25px" Width="196px"></asp:TextBox>
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style19">
                        &nbsp;</td>
                    <td class="style17">
                        Password :</td>
                    <td class="style21">
                        <asp:TextBox ID="TxtPass" runat="server" Height="25px" Width="196px"></asp:TextBox>
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style21">
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style21">
                        <asp:Button ID="BtnAdd" runat="server" CssClass="btn" Height="30px" 
                            onclick="BtnAdd_Click" Text="Add Student" />
                    </td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style20">
                        </td>
                    <td class="style18">
                        </td>
                    <td class="style21">
                        </td>
                    <td class="style18">
                        </td>
                </tr>
                <tr>
                    <td class="style20">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                    <td class="style21">
                        &nbsp;</td>
                    <td class="style18">
                        &nbsp;</td>
                </tr>
                </table>
            </td>
    </tr>
    <tr>
        <td>
                        <asp:GridView ID="Gvstudent" runat="server" AutoGenerateColumns="False" 
                            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                            GridLines="None" Visible="False" DataKeyNames="Student_ID">
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
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                            SelectCommand="SELECT * FROM [Student_Info]" 
                            DeleteCommand="DELETE FROM [Student_Info] WHERE [Student_ID] = @Student_ID" 
                            InsertCommand="INSERT INTO [Student_Info] ([Student_ID], [Student_Name], [MobileNo], [Gender], [Email], [Username], [Password], [Program], [Semester], [Level]) VALUES (@Student_ID, @Student_Name, @MobileNo, @Gender, @Email, @Username, @Password, @Program, @Semester, @Level)" 
                            UpdateCommand="UPDATE [Student_Info] SET [Student_Name] = @Student_Name, [MobileNo] = @MobileNo, [Gender] = @Gender, [Email] = @Email, [Username] = @Username, [Password] = @Password, [Program] = @Program, [Semester] = @Semester, [Level] = @Level WHERE [Student_ID] = @Student_ID">
                            <DeleteParameters>
                                <asp:Parameter Name="Student_ID" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Student_ID" Type="String" />
                                <asp:Parameter Name="Student_Name" Type="String" />
                                <asp:Parameter Name="MobileNo" Type="Int32" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Username" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                                <asp:Parameter Name="Program" Type="String" />
                                <asp:Parameter Name="Semester" Type="String" />
                                <asp:Parameter Name="Level" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Student_Name" Type="String" />
                                <asp:Parameter Name="MobileNo" Type="Int32" />
                                <asp:Parameter Name="Gender" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Username" Type="String" />
                                <asp:Parameter Name="Password" Type="String" />
                                <asp:Parameter Name="Program" Type="String" />
                                <asp:Parameter Name="Semester" Type="String" />
                                <asp:Parameter Name="Level" Type="String" />
                                <asp:Parameter Name="Student_ID" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
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

<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Attendance01.Student.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .style4
        {
            height: 15px;
        }
        .style5
        {
            width: 569px;
        }
        .style6
        {
            text-align: center;
        }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tbl">
    <tr>
        <td class="tblhead" colspan="5">
            Welcome to Attendance Portal</td>
    </tr>
    <tr>
        <td colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="5">
            &nbsp;</td>
    </tr>
   
        <tr>
        <td colspan="5">
            <table align="center" class="hometbl">
                <tr>
                    <td class="hometblhead">
                        My Attendance</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style4">
                        <table class="style5">
                            <tr>
                                <td class="style6" 
                                    style="color: #660066; font-weight: bold; font-size: x-large;">
                                    Total</td>
                                <td class="style6" 
                                    style="color: #660066; font-weight: bold; font-size: x-large;">
                                    Present</td>
                                <td class="style6" 
                                    style="color: #660066; font-weight: bold; font-size: x-large;">
                                    Absent</td>
                            </tr>
                            <tr>
                                <td class="style6">
                        <asp:Label ID="lbltotal" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        ForeColor="#660066"></asp:Label>
                                </td>
                                <td class="style6">
                        <asp:Label ID="lblpresent" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        ForeColor="#660066"></asp:Label>
                                </td>
                                <td class="style6">
                        <asp:Label ID="lblabsent" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                                        ForeColor="#660066"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        </tr>
        <tr>
        <td colspan="5">
            &nbsp;</td>
        </tr>
        <tr>
        <td colspan="5">
            &nbsp;</td>
        </tr>
        <tr>
        <td colspan="5">
            <table align="center" class="hometbl">
                <tr>
                    <td class="hometblhead">
                        My Complain</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="lblcomplain" runat="server" Font-Bold="True" 
                            Font-Size="XX-Large" ForeColor="#660066"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </td>
        </tr>
   
    <tr>
        <td colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GVComplain" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="CID" DataSourceID="SqlDataSource1" Visible="False">
                <Columns>
                    <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" 
                        ReadOnly="True" SortExpression="CID" />
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Complaint] WHERE ([ID] = @ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="ID" SessionField="Username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            <asp:GridView ID="GVAttend" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Att_ID" DataSourceID="SqlDataSource2" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                        SortExpression="Student_ID" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Attendance] WHERE ([Student_ID] = @Student_ID)">
                <SelectParameters>
                    <asp:SessionParameter Name="Student_ID" SessionField="Username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            <asp:GridView ID="GVPresent" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Att_ID" DataSourceID="SqlDataSource3" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Attendance] WHERE (([Student_ID] = @Student_ID) AND ([Status] = @Status))">
                <SelectParameters>
                    <asp:SessionParameter Name="Student_ID" SessionField="Username" Type="String" />
                    <asp:QueryStringParameter DefaultValue="Present" Name="Status" 
                        QueryStringField="Present" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            <asp:GridView ID="GVAbsent" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Att_ID" DataSourceID="SqlDataSource4" Visible="False">
                <Columns>
                    <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" 
                        SortExpression="Student_ID" />
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                SelectCommand="SELECT * FROM [Attendance] WHERE (([Student_ID] = @Student_ID) AND ([Status] = @Status))">
                <SelectParameters>
                    <asp:SessionParameter Name="Student_ID" SessionField="Username" Type="String" />
                    <asp:QueryStringParameter DefaultValue="Absent" Name="Status" 
                        QueryStringField="Absent" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        <td>
            &nbsp;</td>
    </tr>
   
    <tr>
        <td colspan="5">
            &nbsp;</td>
    </tr>
   
    </table>

</asp:Content>

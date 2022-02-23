<%@ Page Title="" Language="C#" MasterPageFile="~/Staff/Staff.Master" AutoEventWireup="true" CodeBehind="Complain.aspx.cs" Inherits="Attendance01.Staff.Complain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style4
        {
            width: 625px;
        }
        .style5
        {
            height: 80px;
        }
        .style6
        {
            height: 80px;
            width: 321px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            COMPLAIN MODULE</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                
                <asp:View ID="View1" runat="server">
                    <table class="style1">
                        <tr>
                            <td>
                                Total Complain =
                                <asp:Label ID="lblcomplain" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:GridView ID="GVComplain" runat="server" AutoGenerateColumns="False" 
                                    DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" 
                                    GridLines="None" Width="722px" Font-Size="Small" DataKeyNames="CID">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:CommandField ShowEditButton="True" />
                                        <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="CID" />
                                        <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" 
                                            ReadOnly="True" />
                                        <asp:BoundField DataField="About" HeaderText="About" SortExpression="About" />
                                        <asp:BoundField DataField="Message" HeaderText="Message" 
                                            SortExpression="Message" />
                                        <asp:BoundField DataField="Reply" HeaderText="Reply" 
                                            SortExpression="Reply" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <asp:LinkButton ID="Reply" runat="server" ForeColor="Red" onclick="Reply_Click">Reply</asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <EmptyDataTemplate>
                                        <asp:LinkButton ID="LinkReply" runat="server" ForeColor="Red" CommandArgument='<%#Eval("ID") %>'>Reply</asp:LinkButton>
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
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                                    SelectCommand="SELECT * FROM [Complaint]" 
                                    ConflictDetection="CompareAllValues" 
                                    DeleteCommand="DELETE FROM [Complaint] WHERE [CID] = @original_CID AND (([ID] = @original_ID) OR ([ID] IS NULL AND @original_ID IS NULL)) AND (([About] = @original_About) OR ([About] IS NULL AND @original_About IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Reply] = @original_Reply) OR ([Reply] IS NULL AND @original_Reply IS NULL))" 
                                    InsertCommand="INSERT INTO [Complaint] ([ID], [About], [Message], [Reply]) VALUES (@ID, @About, @Message, @Reply)" 
                                    OldValuesParameterFormatString="original_{0}" 
                                    UpdateCommand="UPDATE [Complaint] SET [ID] = @ID, [About] = @About, [Message] = @Message, [Reply] = @Reply WHERE [CID] = @original_CID AND (([ID] = @original_ID) OR ([ID] IS NULL AND @original_ID IS NULL)) AND (([About] = @original_About) OR ([About] IS NULL AND @original_About IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Reply] = @original_Reply) OR ([Reply] IS NULL AND @original_Reply IS NULL))">
                                    <DeleteParameters>
                                        <asp:Parameter Name="original_CID" Type="Int32" />
                                        <asp:Parameter Name="original_ID" Type="String" />
                                        <asp:Parameter Name="original_About" Type="String" />
                                        <asp:Parameter Name="original_Message" Type="String" />
                                        <asp:Parameter Name="original_Reply" Type="String" />
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="ID" Type="String" />
                                        <asp:Parameter Name="About" Type="String" />
                                        <asp:Parameter Name="Message" Type="String" />
                                        <asp:Parameter Name="Reply" Type="String" />
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="ID" Type="String" />
                                        <asp:Parameter Name="About" Type="String" />
                                        <asp:Parameter Name="Message" Type="String" />
                                        <asp:Parameter Name="Reply" Type="String" />
                                        <asp:Parameter Name="original_CID" Type="Int32" />
                                        <asp:Parameter Name="original_ID" Type="String" />
                                        <asp:Parameter Name="original_About" Type="String" />
                                        <asp:Parameter Name="original_Message" Type="String" />
                                        <asp:Parameter Name="original_Reply" Type="String" />
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <table align="center" class="style4" style="border: thin solid #FF0000">
                        <tr>
                            <td class="tblhead" colspan="2">
                                Reply Complain
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                ID :
                                <asp:Label ID="lblID" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                About :
                                <asp:Label ID="lblAbout" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                Complain :
                                <asp:Label ID="lblcomp" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6" valign="top">
                                Answer :
                                <asp:TextBox ID="txtans" runat="server" CssClass="txt" Height="74px" 
                                    TextMode="MultiLine" Width="260px"></asp:TextBox>
                            </td>
                            <td class="style5" valign="bottom">
                                <asp:Button ID="btnreply" runat="server" CssClass="btn" 
                                    onclick="btnreply_Click1" Text="Reply" Height="34px" Width="74px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:View>
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
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

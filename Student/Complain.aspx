<%@ Page Title="" Language="C#" MasterPageFile="~/Student/Student.Master" AutoEventWireup="true" CodeBehind="Complain.aspx.cs" Inherits="Attendance01.Student.Complain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .style4
        {
            width: 418px;
        }
        .style5
        {
            width: 641px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
                Complain Form</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style4">
                <tr>
                    <td class="lbl">
                        ID :</td>
                    <td>
                        <asp:TextBox ID="txtID" runat="server" CssClass="txt" Width="198px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        About :</td>
                    <td>
                        <asp:TextBox ID="txtAbout" runat="server" CssClass="txt" Width="198px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                            Message :</td>
                    <td>
                        <asp:TextBox ID="txtmsg" runat="server" CssClass="txt" Height="50px" 
                                TextMode="MultiLine" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                            &nbsp;</td>
                    <td>
                        <asp:Button ID="btnsend" runat="server" CssClass="btn" Text="Send" 
                                onclick="btnsend_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                            &nbsp;</td>
                    <td>
                        <asp:Label ID="lbl" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style5">
                <tr>
                    <td>
                            &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GVStudent" runat="server" AutoGenerateColumns="False" 
                                style="text-align: center" Width="681px" BackColor="White" 
                                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                                ForeColor="Black" GridLines="Vertical" DataSourceID="SqlDataSource1" 
                            DataKeyNames="CID">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" 
                                    ReadOnly="True" SortExpression="CID" />
                                <asp:BoundField DataField="About" HeaderText="About" 
                                    SortExpression="About" />
                                <asp:BoundField DataField="Message" HeaderText="Message" 
                                    SortExpression="Message" />
                                <asp:BoundField DataField="Reply" HeaderText="Reply" SortExpression="Reply" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" />
                            <HeaderStyle BackColor="#8506A9" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle BackColor="#F7F7DE" />
                            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:DataConnectionString2 %>" 
                            SelectCommand="SELECT [CID], [About], [Message], [Reply] FROM [Complaint] WHERE ([ID] = @ID)" 
                            ConflictDetection="CompareAllValues" 
                            DeleteCommand="DELETE FROM [Complaint] WHERE [CID] = @original_CID AND (([About] = @original_About) OR ([About] IS NULL AND @original_About IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Reply] = @original_Reply) OR ([Reply] IS NULL AND @original_Reply IS NULL))" 
                            InsertCommand="INSERT INTO [Complaint] ([About], [Message], [Reply]) VALUES (@About, @Message, @Reply)" 
                            OldValuesParameterFormatString="original_{0}" 
                            
                            UpdateCommand="UPDATE [Complaint] SET [About] = @About, [Message] = @Message, [Reply] = @Reply WHERE [CID] = @original_CID AND (([About] = @original_About) OR ([About] IS NULL AND @original_About IS NULL)) AND (([Message] = @original_Message) OR ([Message] IS NULL AND @original_Message IS NULL)) AND (([Reply] = @original_Reply) OR ([Reply] IS NULL AND @original_Reply IS NULL))">
                            <DeleteParameters>
                                <asp:Parameter Name="original_CID" Type="Int32" />
                                <asp:Parameter Name="original_About" Type="String" />
                                <asp:Parameter Name="original_Message" Type="String" />
                                <asp:Parameter Name="original_Reply" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="About" Type="String" />
                                <asp:Parameter Name="Message" Type="String" />
                                <asp:Parameter Name="Reply" Type="String" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:SessionParameter Name="ID" SessionField="Username" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="About" Type="String" />
                                <asp:Parameter Name="Message" Type="String" />
                                <asp:Parameter Name="Reply" Type="String" />
                                <asp:Parameter Name="original_CID" Type="Int32" />
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
        </td>
    </tr>
</table>
</asp:Content>

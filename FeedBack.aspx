<%@ Page Title="" Language="C#" MasterPageFile="~/Page.Master" AutoEventWireup="true" CodeBehind="FeedBack.aspx.cs" Inherits="Attendance01.FeedBack" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            FeedBack Form</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <table align="center" class="style1">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="text-align: right">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="lbl">
                        Enter Id :</td>
                    <td>
                        <asp:TextBox ID="txtindex" runat="server" CssClass="txt" Width="183px" 
                            Height="29px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        &nbsp;Enter Name :</td>
                    <td>
                        <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="183px" 
                            Height="28px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Contact :
                    </td>
                    <td>
                        <asp:TextBox ID="txtcontact" runat="server" placeholder="Email" CssClass="txt" 
                            Width="183px" Height="31px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="lbl">
                        Feedback :</td>
                    <td>
                        <asp:TextBox ID="txtfeed" runat="server" CssClass="txt" Height="81px" 
                            TextMode="MultiLine" Width="183px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button9" runat="server" CssClass="btn" Text="Send Feedback" 
                            Width="120px" onclick="Button9_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="lbl" runat="server" ForeColor="Red" Visible="False">Message Sent!</asp:Label>
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
</asp:Content>

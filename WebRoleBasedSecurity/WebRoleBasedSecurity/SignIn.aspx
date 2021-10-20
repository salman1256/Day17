<%@ Page Title="" Language="C#" MasterPageFile="~/SecureSiteTemplate.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebRoleBasedSecurity.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3"><h2>Sign In</h2></td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Label ID="lblMsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">User Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="Insert User Name " ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">User Password</td>
            <td class="auto-style5">
                <asp:TextBox ID="txtUserPwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserPwd" ErrorMessage="Insert Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">
                <asp:Button ID="btnSignIn" runat="server" OnClick="btnSignIn_Click" Text="SignIn" style="height: 26px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

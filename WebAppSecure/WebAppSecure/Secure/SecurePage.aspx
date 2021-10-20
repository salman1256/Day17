<%@ Page Title="" Language="C#" MasterPageFile="~/SecureSite.Master" AutoEventWireup="true" CodeBehind="SecurePage.aspx.cs" Inherits="WebAppSecure.Secure.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3"><h2>Secure Page</h2></td>
        </tr>
        <tr>
            <td colspan="3"><h2>Only Authorized User can Access this Page!!!</h2></td>
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

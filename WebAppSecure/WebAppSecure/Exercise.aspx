<%@ Page Title="" Language="C#" MasterPageFile="~/SecureSite.Master" AutoEventWireup="true" CodeBehind="Exercise.aspx.cs" Inherits="WebAppSecure.Exercise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Exercise</h2>
    <p>Create database SecureDb. In SecureDb Create Table UsersInfo.</p>
    <table border="1">
        <tr>
            <td>UserName:  nvarchar(50) Pk </td>
            <td>UserPassword: nvarchar(50) not null  </td>
        </tr>
    </table>
    Create Web application ,Web is accessable only for the users those have records in UserInfo Table.
</asp:Content>

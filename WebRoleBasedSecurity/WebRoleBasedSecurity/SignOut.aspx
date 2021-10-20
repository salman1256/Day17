<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignOut.aspx.cs" Inherits="WebRoleBasedSecurity.SignOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
    <link href="SecureStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3"><h1>Sign Out Page</h1>
                       <br />
                        <h2>Bye!!!</h2>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">&nbsp; You have signed out from the website to sign In again&nbsp;
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignIn.aspx">Click Here</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp; You can browse our web as a guest as well&nbsp; to browse&nbsp; Home Page&nbsp;&nbsp;
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home.aspx">Click Here</asp:HyperLink>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

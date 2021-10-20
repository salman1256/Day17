<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThreeMethods.aspx.cs" Inherits="WebDay17.ThreeMethods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="OurStyle.css" rel="stylesheet" />
    <title>Three Methods</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
        <tr>
            <td colspan="3"><h2>Three Methods</h2></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnRR" runat="server" OnClick="BtnRR_Click" Text="ResponseRedirect" SkinID="whitBtnSkin" />
            </td>
            <td>
                <asp:Button ID="BtnST" runat="server" OnClick="BtnST_Click" Text="Server Transfer" />
            </td>
            <td>
                <asp:Button ID="BtnSE" runat="server" OnClick="BtnSE_Click" Text="Server Execute" />
            </td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebDay17.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="OurStyle.css" rel="stylesheet" />
    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <table class="auto-style1">
        <tr>
            <td colspan="3"><h2>Home Page</h2></td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server"  ImageUrl="~/Images/laptop - Copy.jpg" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
        </div>
    </form>
</body>
</html>

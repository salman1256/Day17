<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DynamicTh.aspx.cs" Inherits="WebDay17.DynamicTh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
        <asp:ListBox ID="lstThemes" runat="server"></asp:ListBox><br />
        <br />
        <asp:Button ID="cmdApply" runat="server" Text="Apply Theme" OnClick="cmdApply_Click" />
        <asp:Button ID="cmdClear" runat="server" Text="Clear Theme" OnClick="cmdClear_Click" />
    </div>
        </div>
    </form>
</body>
</html>

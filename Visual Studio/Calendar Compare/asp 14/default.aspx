<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="asp_14._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Compare Dates<br />
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
            <br />
            <br />
            <asp:Button ID="okButton" runat="server" OnClick="okButton_Click" Text="OK" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

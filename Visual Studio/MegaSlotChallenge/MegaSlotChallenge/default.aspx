<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="MegaSlotChallenge._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" Height="200px" Width="199px" />
            <asp:Image ID="Image2" runat="server" Height="200px" Width="199px" />
            <asp:Image ID="Image3" runat="server" Height="200px" Width="199px" />
            <br />
            <br />
            Your Bet:<asp:TextBox ID="betTextBox" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="pullButton" runat="server" OnClick="pullButton_Click" Text="Pull Lever" />
            <br />
            <br />
            <br />
            <asp:Label ID="resultLabel" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Label ID="moneyLabel" runat="server"></asp:Label>
            <br />
            <br />
            1 Cherry x2 Payout<br />
            2 Cherries x3 Payout<br />
            3 Cherries x4 Payout<br />
            3 7&#39;s = Jackopt&nbsp; x100 Payout<br />
            Bar = 0 payout</div>
    </form>
</body>
</html>

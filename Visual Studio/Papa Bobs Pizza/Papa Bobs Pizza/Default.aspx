<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Papa_Bobs_Pizza.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
        }
        .auto-style1 {
            color: #FF3300;
        }
        </style>
</head>
<body style="font-size: large">
    <form id="form1" runat="server">
        <p class="auto-style2">
            Papa Dave&#39;s Pizza</p>
        <p>
        <asp:RadioButton ID="smallRadioButton" runat="server" Checked="True" GroupName="SizeGroup" Text="Baby Size (10&quot;) $10" />
        <br />
        <asp:RadioButton ID="mediumRadioButton" runat="server" GroupName="SizeGroup" Text="Momma Size (13&quot;) $13" />
        <br />
        <asp:RadioButton ID="largeRadioButton" runat="server" GroupName="SizeGroup" Text="Papa Size - (16&quot;) $16" />
        </p>
        <p>
        <asp:RadioButton ID="thinRadioButton" runat="server" Checked="True" GroupName="CrustGroup" Text="Thin Crust" />
        <br />
        <asp:RadioButton ID="deepRadioButton" runat="server" GroupName="CrustGroup" Text="Deep Dish (+$2)" />
        </p>
        <p>
            <asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+1.50)" />
        <br />
            <asp:CheckBox ID="onionCheckBox" runat="server" Text="Onions (+0.75)" />
        <br />
        <asp:CheckBox ID="greenPepperCheckBox" runat="server" Text="Green Peppers (+0.50)" />
        <br />
        <asp:CheckBox ID="redPepperCheckBox" runat="server" Text="Red Peppers ($0.75)" />
        <br />
        <asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2)" />
        </p>
        <p>
        <strong>Papa Dave&#39;s </strong><span class="auto-style1"><strong>Special</strong></span><br />
        <br />
        Save $2 when you add Pepperoni, Green Peppers, Anchovies, OR Pepperoni, Red Peppers, and Onions to your pizza.<br />
        <br />
            <asp:Button ID="purchaseButton" runat="server" OnClick="purchaseButton_Click1" Text="Purchase" />

        <br />
        <br />
            <br />
            TOTAL: $<asp:Label ID="totalLabel" runat="server" Text="0.00"></asp:Label>
        <br />
        <br />
        Sorry at this time you can only order one pizza online, and pickup only.</p>
    </form>
</body>
</html>

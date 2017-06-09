<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 190px;
            height: 233px;
        }
        .auto-style2 {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>
                <img class="auto-style1" src="epic-spies-logo.jpg" /><br />
                <br />
                <span class="auto-style2">Spy New Assignment Form</span></h2>
            <p>
                Spy Code Name:<asp:TextBox ID="codeNameTextBox" runat="server"></asp:TextBox>
            </p>
            <p>
                New Assignment Name:<asp:TextBox ID="newAssignmentTextBox" runat="server"></asp:TextBox>
            </p>
            <p>
                End Date Previous Assignment:&nbsp;</p>
            <p>
                <asp:Calendar ID="previousCalendar" runat="server"></asp:Calendar>
            </p>
            <p>
                Start Date of New Assignment:</p>
            <p>
                <asp:Calendar ID="newCalendar" runat="server"></asp:Calendar>
            </p>
            <p>
                &nbsp;</p>
            <p>
                Start Date of New Assignment:</p>
            <p>
                <asp:Calendar ID="endCalendar" runat="server"></asp:Calendar>
            </p>
            <p>
                <asp:Button ID="assignButton" runat="server" OnClick="assignButton_Click" Text="Assign Spy" />
            </p>
            <p>
                &nbsp;</p>
            <p>
                <asp:Label ID="resultLabel" runat="server"></asp:Label>
            </p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>

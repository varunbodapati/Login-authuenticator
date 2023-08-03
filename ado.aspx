<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ado.aspx.cs" Inherits="adodemo.ado" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login page</title>
     <style>
    .center{
            margin: auto;
            width: 50%;
            border: 5px solid black;
            padding: 10px;
            background-color: turquoise;
			}
    </style>
</head>

<body>
    
    <form id="form1" runat="server">
        <div class="center">
        <div style="margin-left: 80px; font-size: x-large;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Login Authentication</div>
            <p>
            &nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="USERNAME"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"  Width="266px"></asp:TextBox>
        </p>
        <p>
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" type="password" Text="PASSWORD"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"  Width="267px"></asp:TextBox>
        </p>
        <div style="margin-left: 120px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="login" Width="59px" OnClick="Button1_Click" />
        </div>
      </div>

    </form>
</body>
</html>

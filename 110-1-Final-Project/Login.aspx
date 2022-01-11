<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="_110_1_Final_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="Setting.css" type="text/css" />
<title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>健康管理系統</h1>
        <asp:Label ID="Label2" runat="server" Text="帳號 :"></asp:Label>
        <asp:TextBox ID="User" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="密碼 :"></asp:Label>
        <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="登入" Height="50px" Width="50px" OnClick="Button1_Click"/><br />
        <asp:Label ID="Tip" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label>


    </form>
</body>
</html>

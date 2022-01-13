<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="_110_1_Final_Project.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Setting.css" type="text/css" />
    <title>首頁-健康管理系統</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>-----歡迎來到健康管理系統-----</h1>
        <asp:Label ID="Title" runat="server" Text="您好!" Font-Size="X-Large"></asp:Label><br />
         <asp:Label ID="Time" runat="server" Text=""></asp:Label><br />
        <br />
        <asp:Label ID="Tool" runat="server" Text="請選擇功能 :" Font-Size="Large"></asp:Label><br />
        <br />

        <asp:Button ID="btn_BMI" runat="server" Text="BMI換算" PostBackUrl="~/BMI.aspx" class="Btns" Font-Size="X-Large" Font-Bold="True" />
        <asp:Button ID="btn_Data" runat="server" Text="查詢健康資料" PostBackUrl="~/HealthData.aspx" Font-Size="X-Large" Font-Bold="True" />
        <asp:Button ID="btn_Quest" runat="server" Text="健康問卷" PostBackUrl="~/HealthQuest.aspx" Font-Size="X-Large" Font-Bold="True" />
        <br />
        <br />
        <asp:Button ID="btn_Exit" runat="server" Text="登出" PostBackUrl="~/Login.aspx"  Font-Size="X-Large" Font-Bold="True" />

        




    </form>
</body>
</html>

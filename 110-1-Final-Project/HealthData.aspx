<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthData.aspx.cs" Inherits="_110_1_Final_Project.HealthData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Setting2.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>查詢健康資料</h1>
        <asp:Label runat="server" Text="您好，您的健康資料為:"></asp:Label>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString3 %>" SelectCommand="SELECT * FROM [BMI]" DeleteCommand="DELETE FROM [BMI] WHERE [身高] = @身高" InsertCommand="INSERT INTO [BMI] ([身高], [體重], [BMI], [提示]) VALUES (@身高, @體重, @BMI, @提示)" UpdateCommand="UPDATE [BMI] SET [體重] = @體重, [BMI] = @BMI, [提示] = @提示 WHERE [身高] = @身高">
            <DeleteParameters>
                <asp:Parameter Name="身高" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="身高" Type="Int32" />
                <asp:Parameter Name="體重" Type="Double" />
                <asp:Parameter Name="BMI" Type="Double" />
                <asp:Parameter Name="提示" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="體重" Type="Double" />
                <asp:Parameter Name="BMI" Type="Double" />
                <asp:Parameter Name="提示" Type="String" />
                <asp:Parameter Name="身高" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" DataKeyNames="身高">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="身高" HeaderText="身高" SortExpression="身高" ReadOnly="True" />
                <asp:BoundField DataField="體重" HeaderText="體重" SortExpression="體重" />
                <asp:BoundField DataField="BMI" HeaderText="BMI" SortExpression="BMI" />
                <asp:BoundField DataField="提示" HeaderText="提示" SortExpression="提示" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <br />
        <asp:Button ID="btn_Home" runat="server" Text="回主畫面" PostBackUrl="~/Home.aspx"/>

    </form>
</body>
</html>

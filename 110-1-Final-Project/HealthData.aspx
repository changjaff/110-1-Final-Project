<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthData.aspx.cs" Inherits="_110_1_Final_Project.HealthData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>查詢健康資料</h1>
        <asp:Label runat="server" Text="您好，您的健康資料為:"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString2 %>" DeleteCommand="DELETE FROM [BMI] WHERE [Hight] = @Hight" InsertCommand="INSERT INTO [BMI] ([Hight], [Weight], [BMI]) VALUES (@Hight, @Weight, @BMI)" SelectCommand="SELECT * FROM [BMI]" UpdateCommand="UPDATE [BMI] SET [Weight] = @Weight, [BMI] = @BMI WHERE [Hight] = @Hight">
            <DeleteParameters>
                <asp:Parameter Name="Hight" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Hight" Type="Int32" />
                <asp:Parameter Name="Weight" Type="Double" />
                <asp:Parameter Name="BMI" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Weight" Type="Double" />
                <asp:Parameter Name="BMI" Type="Double" />
                <asp:Parameter Name="Hight" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Hight" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Hight" HeaderText="Hight" ReadOnly="True" SortExpression="Hight" />
                <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
                <asp:BoundField DataField="BMI" HeaderText="BMI" SortExpression="BMI" />
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

    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMI.aspx.cs" Inherits="_110_1_Final_Project.BMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>BMI換算</h1>
        <asp:Label runat="server" Text="請輸入身高"></asp:Label>
        <asp:TextBox ID="txt_cm" runat="server"></asp:TextBox>
        <asp:Label runat="server" Text="cm"></asp:Label> <br/>

        <asp:Label runat="server" Text="請輸入體重"></asp:Label>
        <asp:TextBox ID="txt_kg" runat="server"></asp:TextBox>
        <asp:Label runat="server" Text="kg"></asp:Label><br/>

        <asp:Button ID="btn_submit" runat="server" Text="計算BMI" onclick="btn_submit_Click"/> <br/>

        <asp:Label ID="lb_Msg" runat="server" Text=""></asp:Label> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString %>" DeleteCommand="DELETE FROM [BMI] WHERE [ID] = @ID" InsertCommand="INSERT INTO [BMI] ([ID], [BMI]) VALUES (@ID, @BMI)" SelectCommand="SELECT * FROM [BMI]" UpdateCommand="UPDATE [BMI] SET [BMI] = @BMI WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txt_cm" Name="ID" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lb_Msg" Name="BMI" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="BMI" Type="Double" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="BMI" HeaderText="BMI" SortExpression="BMI" />
            </Columns>
        </asp:GridView>

        
    </form>
</body>
</html>

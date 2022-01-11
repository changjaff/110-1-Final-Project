<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BMI.aspx.cs" Inherits="_110_1_Final_Project.BMI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="Setting2.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>BMI換算</h1>
        <asp:Label runat="server" Text="請輸入身高 : "></asp:Label>
        <asp:TextBox ID="txt_cm" runat="server"></asp:TextBox>
        <asp:Label runat="server" Text="cm(公分)"></asp:Label> <br/>

        <asp:Label runat="server" Text="請輸入體重 : "></asp:Label>
        <asp:TextBox ID="txt_kg" runat="server"></asp:TextBox>
        <asp:Label runat="server" Text="kg(公斤)"></asp:Label><br/>
        <br />
        
        <asp:Button ID="btn_submit" runat="server" Text="計算BMI" onclick="btn_submit_Click"/> 
        <asp:Button ID="btn_Home" runat="server" Text="回主畫面" PostBackUrl="~/Home.aspx"/>
        <br/>

        <asp:Label ID="lb_Msg" runat="server" Text=""></asp:Label> <br/>

        <asp:Label ID="lb_Bmitip" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label> <br/>
         <br />
     
        <asp:Label ID="lb_Msg1" runat="server" Text=""></asp:Label> <br/>

        <asp:Label ID="lb_bmi" runat="server" Visible="False"></asp:Label><br/>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString4 %>" DeleteCommand="DELETE FROM [BMI] WHERE [身高] = @身高" InsertCommand="INSERT INTO [BMI] ([身高], [體重], [BMI], [提示]) VALUES (@身高, @體重, @BMI, @提示)" SelectCommand="SELECT * FROM [BMI]" UpdateCommand="UPDATE [BMI] SET [體重] = @體重, [BMI] = @BMI, [提示] = @提示 WHERE [身高] = @身高">
            <DeleteParameters>
                <asp:Parameter Name="身高" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txt_cm" Name="身高" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txt_kg" Name="體重" PropertyName="Text" Type="Double" />
                <asp:ControlParameter ControlID="lb_bmi" Name="BMI" PropertyName="Text" Type="Double" />
                <asp:ControlParameter ControlID="lb_Bmitip" Name="提示" PropertyName="Text" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="體重" Type="Double" />
                <asp:Parameter Name="BMI" Type="Double" />
                <asp:Parameter Name="提示" Type="String" />
                <asp:Parameter Name="身高" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>

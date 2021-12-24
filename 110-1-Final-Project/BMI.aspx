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

        <asp:Label ID="lb_Msg" runat="server" Text=""></asp:Label> <br/>
     
        <asp:Label ID="lb_Msg1" runat="server" Text=""></asp:Label> <br/>

        <asp:Label ID="lb_bmi" runat="server" Text=""></asp:Label><br/>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HealthConnectionString2 %>" DeleteCommand="DELETE FROM [BMI] WHERE [Hight] = @Hight" InsertCommand="INSERT INTO [BMI] ([Hight], [Weight], [BMI]) VALUES (@Hight, @Weight, @BMI)" SelectCommand="SELECT * FROM [BMI]" UpdateCommand="UPDATE [BMI] SET [Weight] = @Weight, [BMI] = @BMI WHERE [Hight] = @Hight">
            <DeleteParameters>
                <asp:Parameter Name="Hight" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txt_cm" Name="Hight" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txt_kg" Name="Weight" PropertyName="Text" Type="Double" />
                <asp:ControlParameter ControlID="lb_bmi" Name="BMI" PropertyName="Text" Type="Double" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Weight" Type="Double" />
                <asp:Parameter Name="BMI" Type="Double" />
                <asp:Parameter Name="Hight" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>

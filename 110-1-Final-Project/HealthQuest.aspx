<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HealthQuest.aspx.cs" Inherits="_110_1_Final_Project.HealthQuest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>健康問卷</h1>
        <asp:Label runat="server" Text="1. 請問您的年紀為："></asp:Label>
        <asp:RadioButtonList ID="rb_1" runat="server">
             <asp:ListItem>(A)未滿12歲(10)</asp:ListItem>
             <asp:ListItem>(B)12-64歲(10)</asp:ListItem>
             <asp:ListItem>(C)65歲以上(10)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label runat="server" Text="2. 請問您的性別為："></asp:Label>
        <asp:RadioButtonList ID="rb_2" runat="server">
             <asp:ListItem>(A)男(10)</asp:ListItem>
             <asp:ListItem>(B)女(10)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label runat="server" Text="3. 一般來說，您認為您目前的健康狀況是："></asp:Label>
        <asp:RadioButtonList ID="rb_3" runat="server">
             <asp:ListItem>(A)很好(10)</asp:ListItem>
             <asp:ListItem>(B)普通(7)</asp:ListItem>
            <asp:ListItem>(C)不好(4)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label runat="server" Text="4. 請問您現在是否有因健康問題而造成日常活動受到限制，並且已經超過 6 個月以上？若有，此限制有多嚴重？"></asp:Label>
        <asp:RadioButtonList ID="rb_4" runat="server">
             <asp:ListItem>(A)沒有健康問題(10)</asp:ListItem>
             <asp:ListItem>(B)有健康問題，但沒有受到限制(7)</asp:ListItem>
             <asp:ListItem>(C)有受到限制，但不嚴重(5)</asp:ListItem>
             <asp:ListItem>(D)受到嚴重的限制(3)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label runat="server" Text="5. 您有任何已經持續了 6 個月以上，或預期將會持續 6 個月以上的慢性疾病或健康問題嗎？ "></asp:Label>
        <asp:RadioButtonList ID="rb_5" runat="server">
             <asp:ListItem>(A)沒有(10)</asp:ListItem>
             <asp:ListItem>(B)有(5)</asp:ListItem>
        </asp:RadioButtonList>

       <asp:Label runat="server" Text="6. 您是不是曾經患有高血壓？"></asp:Label>
        <asp:RadioButtonList ID="rb_6" runat="server">
             <asp:ListItem>(A)沒有(10)</asp:ListItem>
             <asp:ListItem>(B)有(5)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label runat="server" Text="7. 您是否曾經患有糖尿病呢？"></asp:Label>
        <asp:RadioButtonList ID="rb_7" runat="server">
             <asp:ListItem>(A)沒有(10)</asp:ListItem>
             <asp:ListItem>(B)有(5)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label runat="server" Text="8. 在有使用任何輔具、或幫助的情形下，您在平地上走 500 公尺(大約是小學操場兩圈半或五個街口的距離)會有困難嗎？"></asp:Label>
        <asp:RadioButtonList ID="rb_8" runat="server">
             <asp:ListItem>(A)沒有困難(10)</asp:ListItem>
             <asp:ListItem>(B)相當困難(7)</asp:ListItem>
             <asp:ListItem>(C)完全做不到(4)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label runat="server" Text="9. 請問您是有記憶上的困難，還是沒有辦法專心，或是兩者都有困難呢？"></asp:Label>
        <asp:RadioButtonList ID="rb_9" runat="server">
             <asp:ListItem>(A)沒有問題(10)</asp:ListItem>
             <asp:ListItem>(B)有記憶上的困難(7)</asp:ListItem>
             <asp:ListItem>(C)記憶、專注力都有困難(4)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Label runat="server" Text="10. 請問您在自我照顧上有困難嗎，例如吃飯、穿脫衣服、站立、室內走動、上廁所、洗澡？"></asp:Label>
        <asp:RadioButtonList ID="rb_10" runat="server">
             <asp:ListItem>(A)沒有困難(10)</asp:ListItem>
             <asp:ListItem>(B)有點困難(7)</asp:ListItem>
             <asp:ListItem>(C)相當困難(4)</asp:ListItem>
        </asp:RadioButtonList>

        <asp:Button ID="btn_Submit" runat="server" Text="送出" onclick="btn_Submit_Click"/>
        <asp:Button ID="btn_Home" runat="server" Text="回主畫面" PostBackUrl="~/Home.aspx"/>
        <br/>
        <asp:Label ID="lb_Msg" runat="server" Text=""></asp:Label>
        <asp:Label ID="lb_Msg1" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>

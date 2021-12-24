using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _110_1_Final_Project
{
    public partial class BMI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            double w, h,bmi ;
            w = Convert.ToDouble(txt_kg.Text);
            h = Convert.ToDouble(txt_cm.Text);
            bmi = w / ((h / 100) * (h / 100));
            lb_Msg.Text = "您的BMI為 :" + bmi.ToString("f1");
            lb_Msg1.Text = "BMI值參考 :" + "<br/>";
            lb_Msg1.Text += "體重過輕 : BMI ＜ 18.5" + "<br/>";
            lb_Msg1.Text += "正常範圍 : 8.5 ≦ BMI＜ 24" + "<br/>";
            lb_Msg1.Text += "過重 : 24 ≦ BMI ＜ 27" + "<br/>";


        }
    }
}
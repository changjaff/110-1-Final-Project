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
        double w, h, bmi;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
           
            if(txt_cm.Text  == "" && txt_kg.Text == "")
            {
                lb_Bmitip.Text = "請輸入數值~~" ;
            }
            else
            {
                w = Convert.ToDouble(txt_kg.Text);
                h = Convert.ToDouble(txt_cm.Text);
                bmi = w / ((h / 100) * (h / 100));
                lb_bmi.Text = bmi.ToString("f1");

                if (bmi > 24)
                {
                    lb_Bmitip.Text = "體重過重";
                }

                if (bmi <= 24 && bmi >= 18.5)
                {
                    lb_Bmitip.Text = "體重正常";
                }

                if (bmi < 18.5)
                {
                    lb_Bmitip.Text = "體重過輕";
                }

                lb_Msg.Text = "您的BMI為 :" + bmi.ToString("f1");
                lb_Msg1.Text = "健康小提示 : BMI值參考" + "<br/>";
                lb_Msg1.Text += "體重過輕 : BMI ＜ 18.5" + "<br/>";
                lb_Msg1.Text += "正常範圍 : 18.5 ≦ BMI＜ 24" + "<br/>";
                lb_Msg1.Text += "過重 : 24 ≦ BMI ＜ 27" + "<br/>";

                SqlDataSource1.Insert();
            }
           

            




        }
    }
}
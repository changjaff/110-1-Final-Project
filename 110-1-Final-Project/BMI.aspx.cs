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
            lb_Msg.Text = bmi.ToString();
            SqlDataSource1.Insert();





        }
    }
}
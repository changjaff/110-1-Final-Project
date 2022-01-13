using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _110_1_Final_Project
{
    public partial class HealthQuest : System.Web.UI.Page
    {
        int Value = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (rb_1.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 10;
                    break;
                case 2:
                    Value += 10;
                    break;

            }

            switch (rb_2.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 10;
                    break;

            }

            switch (rb_3.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 7;
                    break;
                case 2:
                    Value += 4;
                    break;

            }

            switch (rb_4.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 7;
                    break;
                case 2:
                    Value += 5;
                    break;
                case 3:
                    Value += 3;
                    break;

            }

            switch (rb_5.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 5;
                    break;


            }

            switch (rb_6.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 5;
                    break;

            }

            switch (rb_7.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 5;
                    break;

            }

            switch (rb_8.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 7;
                    break;
                case 2:
                    Value += 4;
                    break;

            }

            switch (rb_9.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 7;
                    break;
                case 2:
                    Value += 4;
                    break;

            }

            switch (rb_10.SelectedIndex)
            {
                case 0:
                    Value += 10;
                    break;
                case 1:
                    Value += 7;
                    break;
                case 2:
                    Value += 4;
                    break;

            }




        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            lb_Msg.Text += "恭喜，您得到了" + Value + "分 !"+"<br />";
            lb_Msg1.Text += "分數說明:" + "<br />";
            lb_Msg1.Text += "分數60分下，應注意身體健康狀況並洽詢醫師" + "<br />";
            lb_Msg1.Text += "分數70分~80分，健康尚可但仍需多注意自身身體狀況" + "<br />";
            lb_Msg1.Text += "分數90分~100分，身體狀況完美繼續保持多加繼續努力" + "<br />";
        }
    }
}
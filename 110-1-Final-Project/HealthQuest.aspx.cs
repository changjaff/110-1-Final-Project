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
            lb_Msg.Text += "恭喜，您得到了" + Value + "分";
        }
    }
}
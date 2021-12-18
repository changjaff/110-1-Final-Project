using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _110_1_Final_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (User.Text == "Test" && Password.Text == "1234")
            {

                Server.Transfer("Home.aspx");
            }
            else
            {
                Tip.Text = "帳號或密碼錯誤，請在試一次";

            }
        }
    }
}
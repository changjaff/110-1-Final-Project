using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _110_1_Final_Project
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack == false)
            {
                Title.Text  =  Request.Form.Get("User") + " 用戶" + Title.Text;
                Time.Text = DateTime.Now.ToString();
            }
        }
    }
}
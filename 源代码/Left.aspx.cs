using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Left : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["cx"].ToString() == "投稿人员")
        {
            Response.Redirect("TLeft.aspx");
        }
        if (Session["cx"].ToString() == "审稿人员")
        {
            Response.Redirect("SLeft.aspx");
        }
        if (Session["cx"].ToString() == "编辑人员")
        {
            Response.Redirect("BLeft.aspx");
        }

    }
}

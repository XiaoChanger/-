using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class AdminMod : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.TextBox2.Text == "" || this.TextBox3.Text == "")
        {
            Response.Write("<script>alert('���벻��Ϊ�գ�');document.location=document.location;</script>");
        }
        if (this.TextBox1.Text != Session["PWD"].ToString())
        {
            Response.Write("<script>alert('�����벻�ԣ�');document.location=document.location;</script>");
        }
        else if (this.TextBox2.Text == this.TextBox3.Text)
        {
            string sql = "update TB_Admin set PassWord='" + this.TextBox2.Text + "' where UserName='" + Session["UserName"].ToString() + "'";
            bool b = DBHelper.ExecSql(sql);
            if (b)
            {
                Response.Write("<script>alert('�����ɹ���');document.location=document.location;</script>");
            }
            else
            {
                Response.Write("<script>alert('����ʧ�ܣ�');document.location=document.location;</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('2����������벻һ�£�');document.location=document.location;</script>");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        this.TextBox1.Text = "";
        this.TextBox2.Text = "";
        this.TextBox3.Text = "";
    }
}



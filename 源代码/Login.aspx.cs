using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (this.password.Value.ToString().Trim() == "" || username.Value.ToString().Trim() == "")
        {
            Response.Write("<script>javascript:alert('请输入完整');history.back();</script>");
            Response.End();
        }


        string UserName = username.Value;
        string PWD = this.password.Value;
        if (this.DropDownList1.SelectedIndex == 0)
        {
           

            string SQL = "select * from TB_Admin where UserName='"+UserName+"' and Password='"+PWD +"' ";
            DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];
            if (dt.Rows.Count > 0)
            {
                Session["cx"] = "管理员";
                Session["PWD"] = PWD;
                Session["UserName"] = UserName;
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或者密码错误！');document.location=document.location;</script>");

            }
        }
         

        if (this.DropDownList1.SelectedIndex == 1)
        {
            string SQL = "select * from TB_TouGao where UserName='" + UserName + "' and PassWord='" + PWD + "' ";
            DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];
            if (dt.Rows.Count > 0)
            {
                Session["cx"] = "投稿人员";
              
                Session["PWD"] = PWD;
                Session["UserName"] = UserName;


             
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或者密码错误！');document.location=document.location;</script>");
            }
        }      
        
        
        if (this.DropDownList1.SelectedIndex == 2)
        {
            string SQL = "select * from TB_Shenhe where UserName='" + UserName + "' and PassWord='" + PWD + "' ";
            DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];
            if (dt.Rows.Count > 0)
            {
                Session["cx"] = "审稿人员";
              
                Session["PWD"] = PWD;
                Session["UserName"] = UserName;


             
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或者密码错误！');document.location=document.location;</script>");
            }
        }
        if (this.DropDownList1.SelectedIndex == 3)
        {
            string SQL = "select * from TB_BianJi where UserName='" + UserName + "' and PassWord='" + PWD + "' ";
            DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];
            if (dt.Rows.Count > 0)
            {
                Session["cx"] = "编辑人员";
              
                Session["PWD"] = PWD;
                Session["UserName"] = UserName;


             
                Response.Redirect("Index.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或者密码错误！');document.location=document.location;</script>");
            }
        }

    }
}

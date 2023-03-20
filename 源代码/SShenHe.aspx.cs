using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class SShenHe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//判断是否回发
        {
              
        }
    }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            string SQL = "";
           bool iRet=false;
           if (Request["ID"] != null)//判断是否有参数
           {
               string id = Request["ID"].ToString();
               SQL = "update TB_GaoJian set State='" + this.DropDownList1.SelectedItem.Text + "',Memo='" + TextBox1.Text + "',GaoFei='" + TextBox2.Text + "' where ID='" + id + "'";//执行更新操作
               iRet = DBHelper.ExecSql(SQL);
           }
          
            if (iRet)
            {
           DBHelper.ShowMessage(Page, "恭喜您，操作成功！","");
            }
            else
            {
           DBHelper.ShowMessage(Page, "对不起，操作失败！","");
             }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
          
         }
}



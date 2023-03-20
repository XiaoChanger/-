using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class Shenhe_List : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//判断是否回发
        {
            GetDate();//调用函数
        }
    }
    private void GetDate()   
    {
        DataSet ds = DBHelper.GetDataSet("select * from TB_Shenhe");
        this.GridView1.DataSource = ds.Tables[0];//获取数据并绑定到控件 
        this.GridView1.DataBind(); 
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();//获取要删除的主键
        string SQL = "delete   TB_Shenhe  where ID='" + ID + "'";
        bool bRet = DBHelper.ExecSql(SQL);//执行删除操作
        if (bRet)
        {
              DBHelper.ShowMessage(Page, "操作成功！", "Shenhe_List.aspx");
         }
        else
        {
              DBHelper.ShowMessage(Page, "操作失败！", "Shenhe_List.aspx");
        }
        GetDate();
     }
    protected void btnQuery_Click(object sender, EventArgs e)
    {
        string SQL = "select * from TB_Shenhe where 1=1";
        if (!string.IsNullOrEmpty(txtUserName.Text))
        {
            SQL = SQL + " and UserName='" + txtUserName.Text+"'";
        }
        if (!string.IsNullOrEmpty(txtXingMing.Text))
        {
            SQL = SQL + " and XingMing='" + txtXingMing.Text+"'";
        }
            DataSet ds = DBHelper.GetDataSet(SQL);
   this.GridView1.DataSource = ds.Tables[0];//获取数据并绑定到控件 
            this.GridView1.DataBind(); 
    }
}


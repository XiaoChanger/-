using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class TGaoJian_List : System.Web.UI.Page
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
        DataSet ds = DBHelper.GetDataSet("select * from TB_GaoJian  ");
        this.GridView1.DataSource = ds.Tables[0];//获取数据并绑定到控件 
        this.GridView1.DataBind(); 
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();//获取要删除的主键
        string SQL = "delete   TB_GaoJian  where ID='" + ID + "'";
        bool bRet = DBHelper.ExecSql(SQL);//执行删除操作
        if (bRet)
        {
              DBHelper.ShowMessage(Page, "操作成功！", "GaoJian_List.aspx");
         }
        else
        {
              DBHelper.ShowMessage(Page, "操作失败！", "GaoJian_List.aspx");
        }
        GetDate();
     }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string SQL = "select * from TB_GaoJian where 1=1";
        if (!string.IsNullOrEmpty(this.TextBox1.Text))
        {
            SQL = SQL + " and TiMu='" + this.TextBox1.Text + "'";
        }
        if (!string.IsNullOrEmpty(this.TextBox2.Text))
        {
            SQL = SQL + " and LeiXing='" + this.TextBox2.Text + "'";
        }

        if (!string.IsNullOrEmpty(this.DropDownList1.Text))
        {
            SQL = SQL + " and State='" + this.DropDownList1.Text + "'";
        }
        DataSet ds = DBHelper.GetDataSet(SQL);
        this.GridView1.DataSource = ds.Tables[0];//获取数据并绑定到控件 
        this.GridView1.DataBind();
        this.Label1.Text = "共计："+ds.Tables[0].Rows.Count;
    }
}


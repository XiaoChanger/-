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
        if (!IsPostBack)//�ж��Ƿ�ط�
        {
            GetDate();//���ú���
        }
    }
    private void GetDate()   
    {
        DataSet ds = DBHelper.GetDataSet("select * from TB_GaoJian  ");
        this.GridView1.DataSource = ds.Tables[0];//��ȡ���ݲ��󶨵��ؼ� 
        this.GridView1.DataBind(); 
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string ID = GridView1.DataKeys[e.RowIndex].Values[0].ToString();//��ȡҪɾ��������
        string SQL = "delete   TB_GaoJian  where ID='" + ID + "'";
        bool bRet = DBHelper.ExecSql(SQL);//ִ��ɾ������
        if (bRet)
        {
              DBHelper.ShowMessage(Page, "�����ɹ���", "GaoJian_List.aspx");
         }
        else
        {
              DBHelper.ShowMessage(Page, "����ʧ�ܣ�", "GaoJian_List.aspx");
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
        this.GridView1.DataSource = ds.Tables[0];//��ȡ���ݲ��󶨵��ؼ� 
        this.GridView1.DataBind();
        this.Label1.Text = "���ƣ�"+ds.Tables[0].Rows.Count;
    }
}


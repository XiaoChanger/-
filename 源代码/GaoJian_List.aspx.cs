using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class GaoJian_List : System.Web.UI.Page
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
        DataSet ds = DBHelper.GetDataSet("select * from TB_GaoJian where UserName='"+Session["UserName"].ToString()+"'");
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
    
}


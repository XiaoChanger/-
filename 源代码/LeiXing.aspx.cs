using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class LeiXing : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//�ж��Ƿ�ط�
        {
                if (Request["ID"] != null)//�ж��Ƿ��в�������
                {
                    InitData();//ִ�г�ʼ������
                }
        }
    }
        protected void InitData()
        {
            string id = Request["ID"].ToString();
            try
            {
                string SQL = "select * from TB_LeiXing where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];//��ȡ��Ӧ�Ĳ������Ҷ�ҳ����а�
                 if (dt.Rows.Count > 0)
                {
                    this.txtLeiXing.Text = dt.Rows[0]["LeiXing"].ToString();
                }
            }
            catch
            {
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string SQL = "";
           bool iRet=false;
           if (Request["ID"] != null)//�ж��Ƿ��в���
           {
               string id = Request["ID"].ToString();
              SQL=  "update TB_LeiXing set LeiXing='"+txtLeiXing.Text+"' where ID='" + id + "'";//ִ�и��²���
               iRet = DBHelper.ExecSql(SQL);
           }
           else
           {
             SQL= "insert into TB_LeiXing(LeiXing)values('"+txtLeiXing.Text+ "')";;//ִ����Ӳ���
               iRet = DBHelper.ExecSql(SQL);
           }
            if (iRet)
            {
           DBHelper.ShowMessage(Page, "��ϲ���������ɹ���","");
            }
            else
            {
           DBHelper.ShowMessage(Page, "�Բ��𣬲���ʧ�ܣ�","");
             }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            txtLeiXing.Text ="";
         }
}



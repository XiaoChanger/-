using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class GaoJian : System.Web.UI.Page
{
    public static string fname;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//�ж��Ƿ�ط�
        {
            string SQL = "select * from TB_LeiXing";
            DataSet ds = DBHelper.GetDataSet(SQL);
            this.txtLeiXing.DataSource = ds;
            this.txtLeiXing.DataTextField = "LeiXing";
            this.txtLeiXing.DataValueField = "ID";
            txtLeiXing.DataBind();


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
                string SQL = "select * from TB_GaoJian where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];//��ȡ��Ӧ�Ĳ������Ҷ�ҳ����а�
                 if (dt.Rows.Count > 0)
                {
                    this.txtTiMu.Text = dt.Rows[0]["TiMu"].ToString();
                    this.txtLeiXing.Text = dt.Rows[0]["LeiXing"].ToString();
                    //this.txtGaoJian.Text = dt.Rows[0]["GaoJian"].ToString();
                   
                }
            }
            catch
            {
            }
        }

        private void FileUpLoad()
        {
            if (UploadFile.Value != null)
            {
                string nam = UploadFile.PostedFile.FileName;
                //ȡ���ļ���(����·��)�����һ��"."������
                int i = nam.LastIndexOf(".");
                //ȡ���ļ���չ��
                string newext = nam.Substring(i);
                //�������Զ��������ں��ļ���С��ͬΪ�ļ�����,ȷ���ļ������ظ�
                DateTime now = DateTime.Now;
                string newname = now.ToFileTimeUtc() + UploadFile.PostedFile.ContentLength.ToString();
                //�����ļ�������Ҫ��Ŀ¼,������IIS��Ŀ¼�µ�uploadfilesĿ¼
                //ע��: ��������Server.MapPath()ȡ��ǰ�ļ��ľ���Ŀ¼.��asp.net��"\"������"\\"����
                UploadFile.PostedFile.SaveAs(Server.MapPath("UpLoad/" + newname + newext));
                //�õ�����ļ����������:�ļ���,�ļ�����,�ļ���С
                fname = "UpLoad/" + newname + newext;

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string SQL = "";
           bool iRet=false;

           if (UploadFile.Value != null && UploadFile.Value != "")
           {
               FileUpLoad();
           }
           if (Request["ID"] != null)//�ж��Ƿ��в���
           {
               string id = Request["ID"].ToString();
              SQL=  "update TB_GaoJian set TiMu='"+txtTiMu.Text+"',LeiXing='"+txtLeiXing.SelectedItem.Text+"',GaoJian='"+fname +"' where ID='" + id + "'";//ִ�и��²���
               iRet = DBHelper.ExecSql(SQL);
           }
           else
           {
               SQL = "insert into TB_GaoJian(TiMu,LeiXing,GaoJian,UserName)values('" + txtTiMu.Text + "','" + txtLeiXing.SelectedItem.Text + "','" + fname + "','" + Session["UserName"].ToString() + "')"; ;//ִ����Ӳ���
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
            txtTiMu.Text ="";
            txtLeiXing.Text ="";
          
         }
}



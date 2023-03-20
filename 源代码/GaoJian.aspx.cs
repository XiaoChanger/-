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
        if (!IsPostBack)//判断是否回发
        {
            string SQL = "select * from TB_LeiXing";
            DataSet ds = DBHelper.GetDataSet(SQL);
            this.txtLeiXing.DataSource = ds;
            this.txtLeiXing.DataTextField = "LeiXing";
            this.txtLeiXing.DataValueField = "ID";
            txtLeiXing.DataBind();


                if (Request["ID"] != null)//判断是否有参数传入
                {
                    InitData();//执行初始化函数
                }
        }
    }
        protected void InitData()
        {
            string id = Request["ID"].ToString();
            try
            {
                string SQL = "select * from TB_GaoJian where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];//获取对应的参数并且对页面进行绑定
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
                //取得文件名(抱括路径)里最后一个"."的索引
                int i = nam.LastIndexOf(".");
                //取得文件扩展名
                string newext = nam.Substring(i);
                //这里我自动根据日期和文件大小不同为文件命名,确保文件名不重复
                DateTime now = DateTime.Now;
                string newname = now.ToFileTimeUtc() + UploadFile.PostedFile.ContentLength.ToString();
                //保存文件到你所要的目录,这里是IIS根目录下的uploadfiles目录
                //注意: 我这里用Server.MapPath()取当前文件的绝对目录.在asp.net里"\"必须用"\\"代替
                UploadFile.PostedFile.SaveAs(Server.MapPath("UpLoad/" + newname + newext));
                //得到这个文件的相关属性:文件名,文件类型,文件大小
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
           if (Request["ID"] != null)//判断是否有参数
           {
               string id = Request["ID"].ToString();
              SQL=  "update TB_GaoJian set TiMu='"+txtTiMu.Text+"',LeiXing='"+txtLeiXing.SelectedItem.Text+"',GaoJian='"+fname +"' where ID='" + id + "'";//执行更新操作
               iRet = DBHelper.ExecSql(SQL);
           }
           else
           {
               SQL = "insert into TB_GaoJian(TiMu,LeiXing,GaoJian,UserName)values('" + txtTiMu.Text + "','" + txtLeiXing.SelectedItem.Text + "','" + fname + "','" + Session["UserName"].ToString() + "')"; ;//执行添加操作
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
            txtTiMu.Text ="";
            txtLeiXing.Text ="";
          
         }
}



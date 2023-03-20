using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
public partial class TouGao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)//判断是否回发
        {
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
                string SQL = "select * from TB_TouGao where ID='" + id + "'";
                DataTable dt = DBHelper.GetDataSet(SQL).Tables[0];//获取对应的参数并且对页面进行绑定
                 if (dt.Rows.Count > 0)
                {
                    this.txtUserName.Text = dt.Rows[0]["UserName"].ToString();
                    this.txtPassWord.Text = dt.Rows[0]["PassWord"].ToString();
                    this.txtXingMing.Text = dt.Rows[0]["XingMing"].ToString();
                    this.txtSex.Text = dt.Rows[0]["Sex"].ToString();
                    this.txtTel.Text = dt.Rows[0]["Tel"].ToString();
                    this.txtXueLi.Text = dt.Rows[0]["XueLi"].ToString();
                    this.txtDanWei.Text = dt.Rows[0]["DanWei"].ToString();
                    this.txtAddress.Text = dt.Rows[0]["Address"].ToString();
                    this.txtMemo.Text = dt.Rows[0]["Memo"].ToString();
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
           if (Request["ID"] != null)//判断是否有参数
           {
               string id = Request["ID"].ToString();
              SQL=  "update TB_TouGao set UserName='"+txtUserName.Text+"',PassWord='"+txtPassWord.Text+"',XingMing='"+txtXingMing.Text+"',Sex='"+txtSex.Text+"',Tel='"+txtTel.Text+"',XueLi='"+txtXueLi.Text+"',DanWei='"+txtDanWei.Text+"',Address='"+txtAddress.Text+"',Memo='"+txtMemo.Text+"' where ID='" + id + "'";//执行更新操作
               iRet = DBHelper.ExecSql(SQL);
           }
           else
           {
             SQL= "insert into TB_TouGao(UserName,PassWord,XingMing,Sex,Tel,XueLi,DanWei,Address,Memo)values('"+txtUserName.Text+"','"+txtPassWord.Text+"','"+txtXingMing.Text+"','"+txtSex.Text+"','"+txtTel.Text+"','"+txtXueLi.Text+"','"+txtDanWei.Text+"','"+txtAddress.Text+"','"+txtMemo.Text+ "')";;//执行添加操作
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
            txtUserName.Text ="";
            txtPassWord.Text ="";
            txtXingMing.Text ="";
            txtSex.Text ="";
            txtTel.Text ="";
            txtXueLi.Text ="";
            txtDanWei.Text ="";
            txtAddress.Text ="";
            txtMemo.Text ="";
         }
}



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
        if (!IsPostBack)//�ж��Ƿ�ط�
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
               SQL = "update TB_GaoJian set State='" + this.DropDownList1.SelectedItem.Text + "',Memo='" + TextBox1.Text + "',GaoFei='" + TextBox2.Text + "' where ID='" + id + "'";//ִ�и��²���
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
          
         }
}



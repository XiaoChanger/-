using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

/// <summary>
/// DBHelper 的摘要说明
/// </summary>
public class DBHelper
{

    public DBHelper()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }


    /// <summary>
    /// 获得数据库连接字符串
    /// </summary>
    /// <returns></returns>
    public static string GetConnStr()
    {
        return ConfigurationManager.ConnectionStrings["DB"].ConnectionString;
    }



    /// <summary>
    /// 由sql变量（select语句）得到DataSet类型查询记录集合
    /// </summary>
    /// <param name="sql">select语句，字符串类型</param>
    /// <returns></returns>
    public static DataSet GetDataSet(string sql)
    {
        SqlConnection conn = new SqlConnection(GetConnStr());
        conn.Open();
        SqlDataAdapter sda = new SqlDataAdapter(sql, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        conn.Close();
        return ds;
    }




    /// <summary>
    /// 执行sql语句，主要是insert、update、delete语句
    /// </summary>
    /// <param name="sql"></param>
    /// <returns></returns>
    public static Boolean ExecSql(string sql)
    {
        SqlConnection conn = new SqlConnection(GetConnStr());
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        try
        {
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        catch (Exception ex)
        {
            conn.Close();
            return false;
        }
        return true;
    }
    #region 弹出信息提示
    public static void ShowMessage(Page page, string msg, string key)
    {
        string strScript = "<script language=javascript>alert('" + msg + "');</script>";
        ClientScriptManager cs = page.ClientScript;
        Type type = page.GetType();
        if (!cs.IsStartupScriptRegistered(key))
        {
            cs.RegisterStartupScript(type, key, strScript);
        }

    }
    public static void ShowMessage(Page page, string msg, string key, string Redirect)
    {
        string strScript = "<script language=javascript>alert('" + msg + "');window.location.href='" + Redirect + "';</script>";
        ClientScriptManager cs = page.ClientScript;
        Type type = page.GetType();
        if (!cs.IsStartupScriptRegistered(key))
        {
            cs.RegisterStartupScript(type, key, strScript);
        }

    }
    #endregion

    #region   判断信息是否重复

    public static bool CheckRepeat(string TableName, string ComName, string Name)
    {
        SqlConnection conn = new SqlConnection(GetConnStr());
        conn.Open();
        string SQL = "select * from " + TableName + " where ComName='" + Name + "'";
        SqlDataAdapter sda = new SqlDataAdapter(SQL, conn);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        conn.Close();
        bool B = false;
        if (ds.Tables[0].Rows.Count > 0)
            B = true;
        return B;
        //返回true的说明对应的信息已经存在
    }
    #endregion
}
 

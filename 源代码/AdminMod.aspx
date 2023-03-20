
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMod.aspx.cs" Inherits="AdminMod" %>
<head>
              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />
   <title>管理员信息管理页面</title>
</head>
<body >
    <form id="form1" runat="server">
 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  colspan="2" >
修改密码</td>
 </tr>
<tr >
<td  align="right">旧密码:</td>
    <td align="left" ><asp:TextBox ID="TextBox1" runat="server" class="txtcss" TextMode=Password></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">新密码:</td>
    <td align="left" ><asp:TextBox ID="TextBox2" runat="server" class="txtcss" TextMode=Password></asp:TextBox>
 </td></tr>
 
 
 <tr >
<td  align="right">重复新密码:</td>
    <td align="left" ><asp:TextBox ID="TextBox3" runat="server" class="txtcss" TextMode=Password></asp:TextBox>
 </td></tr>
 
 
<tr  >
    <td   align="right"></td>
    <td align="left">
                    <asp:Button ID="Button1" runat="server"    Text="确定"   onclick="Button1_Click" class="btn"/>
                    <asp:Button ID="Button2" runat="server"    Text="重填"   onclick="Button2_Click" class="btn"/>
 </td>
     </tr>

    </table>
</div>
     </form>
</body>
</html>


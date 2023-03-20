<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TouGao.aspx.cs" Inherits="TouGao" %>
<head>
   <script src="js/laydate.js" type="text/javascript"></script>              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />
   <title>投稿人员管理页面</title>
</head>
<body >
    <form id="form1" runat="server">
 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  colspan="2" >
投稿人员管理 </td>
 </tr>
<tr >
<td  align="right">用户名:</td>
    <td align="left" ><asp:TextBox ID="txtUserName" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">密码:</td>
    <td align="left" ><asp:TextBox ID="txtPassWord" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">姓名:</td>
    <td align="left" ><asp:TextBox ID="txtXingMing" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">性别:</td>
    <td align="left" ><asp:DropDownList ID=txtSex class="Dropcss" runat="server">
<asp:ListItem>男</asp:ListItem>
 <asp:ListItem>女</asp:ListItem>
 </asp:DropDownList>
 </td></tr>
<tr >
<td  align="right">电话:</td>
    <td align="left" ><asp:TextBox ID="txtTel" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">学历:</td>
    <td align="left" ><asp:DropDownList ID=txtXueLi class="Dropcss" runat="server">
 <asp:ListItem>本科</asp:ListItem>
 <asp:ListItem>研究生</asp:ListItem>
 <asp:ListItem>博士</asp:ListItem>
 <asp:ListItem>博士后</asp:ListItem>
 </asp:DropDownList>
 </td></tr>
<tr >
<td  align="right">工作单位:</td>
    <td align="left" ><asp:TextBox ID="txtDanWei" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">地址:</td>
    <td align="left" ><asp:TextBox ID="txtAddress" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">备注:</td>
    <td align="left" ><asp:TextBox ID="txtMemo" runat="server" class="txtcss"></asp:TextBox>
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


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GaoJian.aspx.cs" Inherits="GaoJian" %>
<head>
   <script src="js/laydate.js" type="text/javascript"></script>              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />
   <title>投稿信息管理页面</title>
</head>
<body >
    <form id="form1" runat="server">
 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  colspan="2" >
投稿信息管理 </td>
 </tr>
<tr >
<td  align="right">标题:</td>
    <td align="left" ><asp:TextBox ID="txtTiMu" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">类型:</td>
    <td align="left" > 
        <asp:DropDownList ID="txtLeiXing" runat="server">
        </asp:DropDownList>
 </td></tr>
<tr >
<td  align="right">稿件:</td>
    <td align="left" >
        <input id="UploadFile" runat="server" name="UploadFile" size="50" type="file" /></td></tr>
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


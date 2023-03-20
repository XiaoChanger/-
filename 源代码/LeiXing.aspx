<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeiXing.aspx.cs" Inherits="LeiXing" %>
<head>
   <script src="js/laydate.js" type="text/javascript"></script>              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />
   <title>稿件类型管理页面</title>
</head>
<body >
    <form id="form1" runat="server">
 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  colspan="2" >
稿件类型管理 </td>
 </tr>
<tr >
<td  align="right">类型名称:</td>
    <td align="left" ><asp:TextBox ID="txtLeiXing" runat="server" class="txtcss"></asp:TextBox>
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


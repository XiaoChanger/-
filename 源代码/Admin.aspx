<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>
<head>
   <script src="js/laydate.js" type="text/javascript"></script>              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />
   <title>����Ա��Ϣ����ҳ��</title>
</head>
<body >
    <form id="form1" runat="server">
 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  colspan="2" >
����Ա��Ϣ���� </td>
 </tr>
<tr >
<td  align="right">�û���:</td>
    <td align="left" ><asp:TextBox ID="txtUserName" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">����:</td>
    <td align="left" ><asp:TextBox ID="txtPassWord" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr  >
    <td   align="right"></td>
    <td align="left">
                    <asp:Button ID="Button1" runat="server"    Text="ȷ��"   onclick="Button1_Click" class="btn"/>
                    <asp:Button ID="Button2" runat="server"    Text="����"   onclick="Button2_Click" class="btn"/>
 </td>
     </tr>

    </table>
</div>
     </form>
</body>
</html>


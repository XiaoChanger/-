
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMod.aspx.cs" Inherits="AdminMod" %>
<head>
              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />
   <title>����Ա��Ϣ����ҳ��</title>
</head>
<body >
    <form id="form1" runat="server">
 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  colspan="2" >
�޸�����</td>
 </tr>
<tr >
<td  align="right">������:</td>
    <td align="left" ><asp:TextBox ID="TextBox1" runat="server" class="txtcss" TextMode=Password></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">������:</td>
    <td align="left" ><asp:TextBox ID="TextBox2" runat="server" class="txtcss" TextMode=Password></asp:TextBox>
 </td></tr>
 
 
 <tr >
<td  align="right">�ظ�������:</td>
    <td align="left" ><asp:TextBox ID="TextBox3" runat="server" class="txtcss" TextMode=Password></asp:TextBox>
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


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TouGao.aspx.cs" Inherits="TouGao" %>
<head>
   <script src="js/laydate.js" type="text/javascript"></script>              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />
   <title>Ͷ����Ա����ҳ��</title>
</head>
<body >
    <form id="form1" runat="server">
 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  colspan="2" >
Ͷ����Ա���� </td>
 </tr>
<tr >
<td  align="right">�û���:</td>
    <td align="left" ><asp:TextBox ID="txtUserName" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">����:</td>
    <td align="left" ><asp:TextBox ID="txtPassWord" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">����:</td>
    <td align="left" ><asp:TextBox ID="txtXingMing" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">�Ա�:</td>
    <td align="left" ><asp:DropDownList ID=txtSex class="Dropcss" runat="server">
<asp:ListItem>��</asp:ListItem>
 <asp:ListItem>Ů</asp:ListItem>
 </asp:DropDownList>
 </td></tr>
<tr >
<td  align="right">�绰:</td>
    <td align="left" ><asp:TextBox ID="txtTel" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">ѧ��:</td>
    <td align="left" ><asp:DropDownList ID=txtXueLi class="Dropcss" runat="server">
 <asp:ListItem>����</asp:ListItem>
 <asp:ListItem>�о���</asp:ListItem>
 <asp:ListItem>��ʿ</asp:ListItem>
 <asp:ListItem>��ʿ��</asp:ListItem>
 </asp:DropDownList>
 </td></tr>
<tr >
<td  align="right">������λ:</td>
    <td align="left" ><asp:TextBox ID="txtDanWei" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">��ַ:</td>
    <td align="left" ><asp:TextBox ID="txtAddress" runat="server" class="txtcss"></asp:TextBox>
 </td></tr>
<tr >
<td  align="right">��ע:</td>
    <td align="left" ><asp:TextBox ID="txtMemo" runat="server" class="txtcss"></asp:TextBox>
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


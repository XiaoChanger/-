<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BShenHe.aspx.cs" Inherits="BShenHe" %>
<head>
   <script src="js/laydate.js" type="text/javascript"></script>              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />
   <title> </title>
</head>
<body >
    <form id="form1" runat="server">
 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  colspan="2" >
������ </td>
 </tr>
<tr >
<td  align="right">״̬��</td>
    <td align="left" >
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>�����</asp:ListItem>
            <asp:ListItem>ͨ������</asp:ListItem>
            <asp:ListItem>�������߽����޸�</asp:ListItem>
            <asp:ListItem>δͨ������</asp:ListItem>
        </asp:DropDownList>
 </td></tr>
<tr >
<td  align="right">��ע��</td>
    <td align="left" >
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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


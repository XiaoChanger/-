<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TGaoJian_List.aspx.cs" Inherits="TGaoJian_List" %>
<head>
              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />

   <title>Ͷ����Ϣ�����б�</title>
</head>
<body>
    <form id="form1" runat="server">

 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  >
�����Ϣͳ�� </td>
 </tr>
<tr class="myTRHead">
 <td align="left">
     ���⣺<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
     ���ͣ�<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
     ״̬��<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>�����</asp:ListItem>
            <asp:ListItem>ͨ������</asp:ListItem>
            <asp:ListItem>�������߽����޸�</asp:ListItem>
            <asp:ListItem>δͨ������</asp:ListItem>
            <asp:ListItem>¼��</asp:ListItem>
            <asp:ListItem>δ¼��</asp:ListItem>
        </asp:DropDownList>
     <asp:Button ID="Button1" runat="server" Text="��ѯ" onclick="Button1_Click" />
     <asp:Label ID="Label1" runat="server"></asp:Label>
    </td>
 </tr>
 <tr>
    <td align="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None" 
                        onrowdeleting="GridView1_RowDeleting" style="text-align: left" Width="830px">                        <RowStyle BackColor="#EFF3FB" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

                        <Columns>
                            <asp:BoundField DataField="TiMu" HeaderText="����">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="LeiXing" HeaderText="����">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                           
                           
                              <asp:HyperLinkField DataNavigateUrlFields="GaoJian" 
                                DataNavigateUrlFormatString="{0}"
                                HeaderText="���" Text="���">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                            </asp:HyperLinkField>
                           
                         
                           
                           
                           
                            <asp:BoundField DataField="Shijian" HeaderText="ʱ��">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="UserName" HeaderText="�û���">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="State" HeaderText="״̬">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="Memo" HeaderText="��ע">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                              <asp:BoundField DataField="GaoFei" HeaderText="���">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                           
                           
                           
                           
                           
                            <asp:TemplateField HeaderText="���" ShowHeader="False">
                                <ItemTemplate>
                           <a href='BShenHe.aspx?ID=<%#Eval("ID") %>'><img src="images/edt.gif"  height="15px" style="border:none;" /></a>

                                </ItemTemplate>
                            </asp:TemplateField>
                          
                        </Columns>

 
                    </asp:GridView>
        </td>
 </tr>    
        </table>
     </div>
     </form>
</body>
</html>


<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeiXing_List.aspx.cs" Inherits="LeiXing_List" %>
<head>
    <style type="text/css">
        .style1
        {
            font-size: 15pt;
            font-weight: bold;
        }
    </style>
              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />

   <title>������͹����б�</title>
</head>
<body>
    <form id="form1" runat="server">

 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  >
������͹��� </td>
 </tr>
            <tr class="myTRHead">
            <td   align="left">
�������ƣ�<asp:TextBox ID=txtLeiXing runat="server"></asp:TextBox>
   <asp:Button ID="btnQuery" runat="server" Text="��ѯ" onclick="btnQuery_Click" />
 <tr>
    <td align="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None" 
                        onrowdeleting="GridView1_RowDeleting" style="text-align: left" Width="830px">                        <RowStyle BackColor="#EFF3FB" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

                        <Columns>
                            <asp:BoundField DataField="LeiXing" HeaderText="��������">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:TemplateField HeaderText="�༭" ShowHeader="False">
                                <ItemTemplate>
                           <a href='LeiXing.aspx?ID=<%#Eval("ID") %>'><img src="images/edt.gif"  height="15px" style="border:none;" /></a>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ɾ��" ShowHeader="False">
                                <ItemTemplate>
                           <asp:ImageButton   runat="server" CommandName="Delete" OnClientClick="return confirm('ȷ��Ҫɾ����')" Text="ɾ��" ImageUrl="images/del.jpg"    Height="15PX"/>

                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Left" />
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


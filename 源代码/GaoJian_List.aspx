<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GaoJian_List.aspx.cs" Inherits="GaoJian_List" %>
<head>
    <style type="text/css">
        .style1
        {
            font-size: 15pt;
            font-weight: bold;
        }
    </style>
              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />

   <title>投稿信息管理列表</title>
</head>
<body>
    <form id="form1" runat="server">

 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  >
投稿信息管理 </td>
 </tr>
 <tr>
    <td align="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None" 
                        onrowdeleting="GridView1_RowDeleting" style="text-align: left" Width="830px">                        <RowStyle BackColor="#EFF3FB" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

                        <Columns>
                            <asp:BoundField DataField="TiMu" HeaderText="标题">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="LeiXing" HeaderText="类型">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                           
                           
                              <asp:HyperLinkField DataNavigateUrlFields="GaoJian" 
                                DataNavigateUrlFormatString="{0}"
                                HeaderText="稿件" Text="稿件">
                            <HeaderStyle HorizontalAlign="Left" />
                            <ItemStyle HorizontalAlign="Left" />
                            </asp:HyperLinkField>
                           
                         
                           
                           
                           
                            <asp:BoundField DataField="Shijian" HeaderText="时间">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="UserName" HeaderText="用户名">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="State" HeaderText="状态">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="Memo" HeaderText="备注">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                              <asp:BoundField DataField="GaoFei" HeaderText="稿费">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                           
                           
                           
                           
                           
                            <asp:TemplateField HeaderText="编辑" ShowHeader="False">
                                <ItemTemplate>
                           <a href='GaoJian.aspx?ID=<%#Eval("ID") %>'><img src="images/edt.gif"  height="15px" style="border:none;" /></a>

                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="删除" ShowHeader="False">
                                <ItemTemplate>
                           <asp:ImageButton   runat="server" CommandName="Delete" OnClientClick="return confirm('确定要删除吗？')" Text="删除" ImageUrl="images/del.jpg"    Height="15PX"/>

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


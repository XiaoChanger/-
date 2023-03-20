<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Shenhe_List.aspx.cs" Inherits="Shenhe_List" %>
<head>
    <style type="text/css">
        .style1
        {
            font-size: 15pt;
            font-weight: bold;
        }
    </style>
              <link href="CSS/gzf.css" rel="stylesheet" type="text/css" />

   <title>审核人员管理列表</title>
</head>
<body>
    <form id="form1" runat="server">

 <div class="bodydiv">
 <table class="myTab" cellpadding="4" cellspacing="1">
<tr class="myTRHead">
 <td class="myTDHead"  >
审核人员管理 </td>
 </tr>
            <tr class="myTRHead">
            <td   align="left">
用户名：<asp:TextBox ID=txtUserName runat="server"></asp:TextBox>
姓名：<asp:TextBox ID=txtXingMing runat="server"></asp:TextBox>
   <asp:Button ID="btnQuery" runat="server" Text="查询" onclick="btnQuery_Click" />
 <tr>
    <td align="left">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" DataKeyNames="ID" ForeColor="#333333" GridLines="None" 
                        onrowdeleting="GridView1_RowDeleting" style="text-align: left" Width="830px">                        <RowStyle BackColor="#EFF3FB" />
                         <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />

                        <Columns>
                            <asp:BoundField DataField="UserName" HeaderText="用户名">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="PassWord" HeaderText="密码">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="XingMing" HeaderText="姓名">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="Sex" HeaderText="性别">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="Tel" HeaderText="电话">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="XueLi" HeaderText="学历">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="Address" HeaderText="地址">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:BoundField DataField="Memo" HeaderText="备注">
                            <HeaderStyle HorizontalAlign="Left" />
                              <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
                            <asp:TemplateField HeaderText="编辑" ShowHeader="False">
                                <ItemTemplate>
                           <a href='Shenhe.aspx?ID=<%#Eval("ID") %>'><img src="images/edt.gif"  height="15px" style="border:none;" /></a>

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


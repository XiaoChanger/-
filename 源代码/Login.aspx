<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<head runat="server">
 <link href="css/base.css" rel="stylesheet" type="text/css" />
<link href="css/login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.4.4.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
    	<div class="wrapper_login"  >
          <h2 style="position:absolute;font-size:40px;color:darkseagreen;top:300px;left:5%">稿件在线处理系统</h2>
		<div class="cont" >
			
			<!--content begin-->
			 
				
				<ul class="logink" style="position:absolute;color:darkseagreen;font-size:30px;top:200px;right:3%;border:15px solid rgba(253, 197, 197, 0.24);background:rgba(255, 255, 255, 0.40)">
					
					<li><label>用户名：</label>  <input id="username" name="username" class="text" tabindex="1"  type="text" value="" size="25" runat="server" /></li>
					<li><label>密码：</label> <input id="password" name="password" class="text" tabindex="2" type="password" value="" size="25" runat="server"/></li>

					<li><label>权限：</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" tabindex="3" style="margin-left:10px; padding-left:10px;font-size:14px;width:176px;height:30px;border:1px solid darkseagreen; background: #e3fce0">
                            <asp:ListItem>管理员</asp:ListItem>
                            <asp:ListItem>投稿人员</asp:ListItem>
                            <asp:ListItem>审稿人员</asp:ListItem>
                            <asp:ListItem>编辑人员</asp:ListItem>
                        </asp:DropDownList>
				 </li>
				 
				 
				 
				 </li>
					<li>
					
                        <asp:Button ID="Button1" runat="server" Text="登录"  class="btn_dl"  tabindex="4" 
                            onclick="Button1_Click"/>
					
					
					 </li>
				</ul>
		 
			<!--content end-->
		</div>
	</div>
    </form>
</body>




 
	<!--head end-->


</body>
</html>

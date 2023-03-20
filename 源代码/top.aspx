<%@ Page Language="C#" AutoEventWireup="true" CodeFile="top.aspx.cs" Inherits="top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript">
function currentTime(){
var d = new Date(),str = '';
 str += d.getFullYear()+'年';
 str  += d.getMonth() + 1+'月';
 str  += d.getDate()+'日';
 str += d.getHours()+'时'; 
 str  += d.getMinutes()+'分'; 
str+= d.getSeconds()+'秒'; 
return str;
}
setInterval(function(){$('#time').html(currentTime)},1000);
   function logout()
			{
			   	if(confirm("确定要退出本系统吗??"))
			   	{
            		window.parent.location="login.aspx";   
				   	
			   	}
			} 
</script>
</head>
<body>
<div class="top"></div>
<div id="header">
	<div class="logo">期刊稿件在线处理系统 <font size="2px">当前时间:<span id="time"></span></font></div>
	<div class="navigation">
		<ul>
		 	<li>欢迎您！</li>
			<li><a href="#"> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a></li>
			<li><a href="#" onclick="logout()">退出</a></li>
		</ul>
	</div>
</div>
</body>
</html>

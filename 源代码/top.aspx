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
 str += d.getFullYear()+'��';
 str  += d.getMonth() + 1+'��';
 str  += d.getDate()+'��';
 str += d.getHours()+'ʱ'; 
 str  += d.getMinutes()+'��'; 
str+= d.getSeconds()+'��'; 
return str;
}
setInterval(function(){$('#time').html(currentTime)},1000);
   function logout()
			{
			   	if(confirm("ȷ��Ҫ�˳���ϵͳ��??"))
			   	{
            		window.parent.location="login.aspx";   
				   	
			   	}
			} 
</script>
</head>
<body>
<div class="top"></div>
<div id="header">
	<div class="logo">�ڿ�������ߴ���ϵͳ <font size="2px">��ǰʱ��:<span id="time"></span></font></div>
	<div class="navigation">
		<ul>
		 	<li>��ӭ����</li>
			<li><a href="#"> <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></a></li>
			<li><a href="#" onclick="logout()">�˳�</a></li>
		</ul>
	</div>
</div>
</body>
</html>

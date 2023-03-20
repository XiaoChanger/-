<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TLeft.aspx.cs" Inherits="TLeft" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
 <head runat="server">
 <link type="text/css" rel="stylesheet" href="css/style.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
 <script type="text/javascript" src="js/menu.js"></script>
 </head>
 <body>
    <form id="form1" runat="server">
    <div class="left_menu">
				<ul id="nav_dot">
                         <li>
          <h4 class="M1"><span></span>投稿管理</h4>
           <div class="list-item none">
            <a href='GaoJian.aspx' target=right>在线投稿</a>
            <a href='GaoJian_List.aspx' target=right>投稿管理</a>
          </div>
        </li> 
                     
              <li>
          <h4 class="M1"><span></span>修改密码</h4>
           <div class="list-item none">
            <a href='AdminMod.aspx' target=right>修改密码</a>
          </div>
        </li> 
              </ul>
		</div>
		<script>navList(12);</script>
    </form>
</body>
</html>


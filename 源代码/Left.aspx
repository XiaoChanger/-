<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="Left" %>
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
          <h4 class="M1"><span></span>管理员信息管理</h4>
           <div class="list-item none">
            <a href='Admin.aspx' target=right>添加管理员信息</a>
            <a href='Admin_List.aspx' target=right>管理员信息管理</a>
          </div>
        </li> 
                       <li>
          <h4 class="M1"><span></span>编辑人员管理</h4>
           <div class="list-item none">
            <a href='BianJi.aspx' target=right>添加编辑人员</a>
            <a href='BianJi_List.aspx' target=right>编辑人员管理</a>
          </div>
        </li>  
        
            <li>
          <h4 class="M1"><span></span>审核人员管理</h4>
           <div class="list-item none">
            <a href='Shenhe.aspx' target=right>添加审核人员</a>
            <a href='Shenhe_List.aspx' target=right>审核人员管理</a>
          </div>
        </li> 
                       <li>
          <h4 class="M1"><span></span>投稿人员管理</h4>
           <div class="list-item none">
            <a href='TouGao.aspx' target=right>添加投稿人员</a>
            <a href='TouGao_List.aspx' target=right>投稿人员管理</a>
          </div>
        </li> 
        
        
        
                       <li>
          <h4 class="M1"><span></span>稿件类型管理</h4>
           <div class="list-item none">
            <a href='LeiXing.aspx' target=right>添加稿件类型</a>
            <a href='LeiXing_List.aspx' target=right>稿件类型管理</a>
          </div>
        </li> 
        
        
            <li>
          <h4 class="M1"><span></span>稿件统计</h4>
           <div class="list-item none">
            <a href='TGaoJian_List.aspx' target=right>稿件统计</a>
           
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


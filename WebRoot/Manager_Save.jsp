<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE html>
<html lang="en">
    <head>
    <base href="<%=basePath%>">
        <title>增加人员</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="css/unicorn.login.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <script language="javascript">
function checkform(){
	alert("增加成功！");
	}
</script>
    
    </head>
    
    <body>
        <div id="logo">
            <img src="img/logo.png" alt="" />
        </div>
        <div id="loginbox">            
         <form action="manager/save" method="post"  >
				<p>增加人员</p>
                <table class="table table-bordered table-striped">
            
					        <tr>
					           <td>账号</td>
					           <td><input type="text" name="Account" size=17 /></td>
					              <td>密码</td>
					                  <td><input type="text" name="Password" size=17/></td>
					                
					        </tr>
					       
					         
					         <tr>
					           <td>用户名</td>
					           <td><input type="text" name="Uname" size=17 /></td>
					           <td>班级</td>
					           <td><input type="text" name="Uclass" size=17 /></td>
					        </tr>
				
					          <tr>
					           <td colspan="3" align="center">性别</td>
					           <td colspan="8" align="center"><input type="radio" name="Usex" value="男"id=Usex/>男
					               <input type="radio" name="Usex" value="女"Usex/>女
					           </td>
					          </tr>
					          <tr>
					           <td colspan="3" align="center">身份</td>
					           <td colspan="8" align="center"><input type="radio" name="Utype" value="student" id=Utype/>学生
					               <input type="radio" name="Utype" value="teacher"id=Utype/>老师
					                <input type="radio" name="Utype" value="manager"id=Utype/>管理员
					           </td>
					        					        
					          </tr>
                                   <tr>
					    <td colspan="7" align="center"><input type="submit" value="确认" onclick="checkform()"/></td>
								   </tr>
								   </table>	
								
            </form>
            
        </div>
        
        <script src="js/jquery.min.js"></script>  
        <script src="js/unicorn.login.js"></script> 
    </body>
</html>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>Unicorn Admin</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/colorpicker.css" />
<link rel="stylesheet" href="css/datepicker.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/unicorn.main.css" />
<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

</head>
<body>


	<div id="header">
		<h1>
			<a href="./dashboard.html">Unicorn Admin</a>
		</h1>
	</div>

	<div id="search">
		<input type="text" placeholder="Search here..." />
		<button type="submit" class="tip-right" title="Search">
			<i class="icon-search icon-white"></i>
		</button>
	</div>
	<div id="user-nav" class="navbar navbar-inverse">
		<ul class="nav btn-group">
			<li class="btn btn-inverse"><a title="" href="#"><i
					class="icon icon-user"></i> <span class="text">个人中心</span></a></li>
			<li class="btn btn-inverse dropdown" id="menu-messages"><a
				href="#" data-toggle="dropdown" data-target="#menu-messages"
				class="dropdown-toggle"><i class="icon icon-envelope"></i> <span
					class="text">信息</span> <span class="label label-important">5</span>
					<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<li><a class="sAdd" title="" href="#">new message</a></li>
					<li><a class="sInbox" title="" href="#">inbox</a></li>
					<li><a class="sOutbox" title="" href="#">outbox</a></li>
					<li><a class="sTrash" title="" href="#">trash</a></li>
				</ul>
			<li class="btn btn-inverse"><a title="" href="#"><i
					class="icon icon-cog"></i> <span class="text">设置</span></a></li>
			<li class="btn btn-inverse"><a title="" href="login.html"><i
					class="icon icon-share-alt"></i> <span class="text">注销</span></a></li>
		</ul>
	</div>

	<div id="sidebar">
		<a href="#" class="visible-phone"><i class="icon icon-home"></i>
			首页</a>
		<ul>
			<li class="active"><a href="student/queryselected"><i
					class="icon icon-home"></i> <span>首页</span></a></li>
			<li class="submenu"><a href="#"><i class="icon icon-th-list"></i>
					<span>各学科点人员信息</span> <span class="label">8</span></a>
				<ul>
					<li><a href="">能源与机械工程学院</a></li>
					<li><a href="">数理学院</a></li>
					<li><a href="">电气工程学院</a></li>
					<li><a href="">自动化工程学院</a></li>
					<li><a href="">电子与信息工程学院</a></li>
					<li><a href="">经济与管理学院</a></li>
					<li><a href="">计算机科学与技术学院</a></li>
					<li><a href="">环境与化学工程学院</a></li>
				</ul></li>
			<li class="submenu"><a href="#"><i class="icon icon-th-list"></i>
					<span>人员信息维护</span> <span class="label">3</span></a>
				<ul>
					<li><a href="ManagerTeacher.jsp">老师信息</a></li>
					<li><a href="ManagerStudent.jsp">学生信息</a></li>
					<li><a href="ManagerCmanager.jsp">学科点负责人信息</a></li>

				</ul></li>
			<li><a href="Managerupload.jsp"><i class="icon icon-pencil"></i>
					<span>导入学生信息</span></a></li>
			<li><a href="student/querys"><i class="icon icon-pencil"></i>
					<span>查看导师选择信息</span></a></li>
			<li><a href="Manager_Open.jsp"><i class="icon icon-pencil"></i>
					<span>开启关闭系统</span></a></li>
	</div>


		<div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>Style:</span>
			<a href="#grey" style="background-color: #555555;border-color: #aaaaaa;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
		</div>
		
		<div id="content">
		 <form action="cmanager/download" method="post" class="form-horizontal" />
			<div id="content-header">
				<h1>欢迎</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> </a>
				<a href="#" class="tip-bottom">最终信息</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
					<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
								<h5>信息</h5>
									
							</div>
				<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
		
							
<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
										<th>工号</th>
											<th>教师姓名</th>
												<th>学生1</th>
													<th>学生2</th>
													  <th>学生3</th>
													  
										</tr>
									</thead>
									<tbody>
									 <c:forEach var="finals" items="${finallist}">   
					            <tr>
					         
					            <td valign="top"><input type="text" style="width:65px;border:0px;" name="tid" value="${finals.tid}"/></td> 
					              <td valign="top"><input type="text" style="width:65px;border:0px;" name="tname" value="${finals.tname}" /></td>
					                 <c:forEach var="student" items="${finals.students}">    
					                <td valign="top"><input type="text" style="width:65px;border:0px;"  value="${student.sname}" /></td>
					                
					                      </c:forEach>     
					           
					            </tr>
					             </c:forEach>
									</tbody>
									
								</table>	
						
					             
										
								

								
			<div class="form-actions">
                    <span class="pull-center"><input type="submit" class="btn btn-inverse" value="下载" onclick="checkform()"/></span>
                </div>
						</div>
						</form>
						</div>
					</div>
			
            
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/bootstrap-colorpicker.js"></script>
            <script src="js/bootstrap-datepicker.js"></script>
            <script src="js/jquery.uniform.js"></script>
            <script src="js/select2.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.form_common.js"></script>
	</body>
</html>

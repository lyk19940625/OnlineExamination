<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
	<head>
	<base href="<%=basePath%>>">
		<title>Unicorn Admin</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/jquery.gritter.css" />
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body>
		<form action="student_exam" method="post"> 
		
		<div id="header">
			<h1><a href="./dashboard.html">Unicorn Admin</a></h1>		
		</div>
		
		<div id="search">
			<input type="text" placeholder="Search here..." /><button type="submit" class="tip-right" title="Search"><i class="icon-search icon-white"></i></button>
		</div>
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-user"></i> <span class="text">个人中心</span></a></li>
                <li class="btn btn-inverse dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a class="sAdd" title="" href="#">new message</a></li>
                        <li><a class="sInbox" title="" href="#">inbox</a></li>
                        <li><a class="sOutbox" title="" href="#">outbox</a></li>
                        <li><a class="sTrash" title="" href="#">trash</a></li>
                    </ul>
                </li>
                <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
                <li class="btn btn-inverse"><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">注销</span></a></li>
            </ul>
        </div>
            
		<div id="sidebar">
			<a href="#" class="visible-phone"><i class="icon icon-pencil"></i> 在线考试</a>
			<ul>
				<li><a href="Student.jsp"><i class="icon icon-home"></i> <span>首页</span></a></li>
				<li class="submenu">
					<a href="#"><i class="icon icon-th-list"></i> <span>专项练习</span> <span class="label">3</span></a>
					<ul>
						<li><a href="student_choice/query">选择题</a></li>
						<li><a href="student_blank/query">填空题</a></li>
						<li><a href="student_reading/query">阅读题</a></li>
					</ul>
				</li>
				<li><a href="point/query"><i class="icon icon-tint"></i> <span>知识点</span></a></li>
				<li class="active"><a href="exam/search_title"><i class="icon icon-pencil"></i> <span>在线考试</span></a></li>
				<li><a href="finish/search2"><i class="icon icon-th"></i> <span>我的成绩</span></a></li>
				<li><a href="errorquestion/query"><i class="icon icon-th-list"></i> <span>错题解析</span></a></li>
					</div>
		<div id="style-switcher">
			<i class="icon-arrow-left icon-white"></i>
			<span>Style:</span>
			<a href="#grey" style="background-color: #555555;border-color: #aaaaaa;"></a>
			<a href="#blue" style="background-color: #2D2F57;"></a>
			<a href="#red" style="background-color: #673232;"></a>
		</div>
		
		<div id="content">
			<div id="content-header">
				<h1>在线考试</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="current">在线考试</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th"></i>
								</span>
								<h5>选择试卷</h5>
							</div>
							<div class="widget-content nopadding">
					
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
										    <th>试卷号</th>
											<th>试卷名</th>
											<th>出卷人</th>
				
										</tr>
									</thead>
									<tbody>
												<%int s=0; %>
									  <c:forEach var="exam" items="${titlelist}">
									    <%s++; %>
					            <tr>
					                   <td><%=s %></td>
					               <td><a href="exam/search_exam1?examid=${exam.examid}">${exam.examtitle}</a></td>
					                <td><c:out value="${exam.eteacher}"/></td>
					            </tr>
					                 </c:forEach>
										
									</tbody>
									
								</table>	
														
							</div>
						</div>
									</div>
		</div>
		
		
            
            <script src="js/jquery.min.js"></script>
            <script src="js/jquery.ui.custom.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.gritter.min.js"></script>
            <script src="js/jquery.peity.min.js"></script>
            <script src="js/unicorn.js"></script>
            <script src="js/unicorn.interface.js"></script>
              </form>			
	</body>
</html>

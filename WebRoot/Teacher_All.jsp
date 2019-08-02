<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
	   <base href="<%=basePath%>">
		<title>在线考试练习系统</title>
		<meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
		<link rel="stylesheet" href="css/fullcalendar.css" />	
		<link rel="stylesheet" href="css/unicorn.main.css" />
		<link rel="stylesheet" href="css/unicorn.grey.css" class="skin-color" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
	<body>
		
		
		<div id="header">
			<h1><a href="./Teacher.jsp">teacher</a></h1>		
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
			<a href="#" class="visible-phone"><i class="icon icon-home"></i> 首页</a>
			<ul>
				<li><a href="Teacher.jsp"><i class="icon icon-home"></i> <span>首页</span></a></li>
				<li class="submenu">
					<a href="#"><i class="icon icon-th-list"></i> <span>编写题目</span> <span class="label">3</span></a>
					<ul>
						<li><a href="Teacher_Choice.jsp">选择题</a></li>
						<li><a href="Teacher_Blank.jsp">填空题</a></li>
						<li><a href="Teacher_Reading.jsp">阅读题</a></li>
					</ul>
				</li>
				<li><a href="Teacher_Exam.jsp"><i class="icon icon-tint"></i> <span>组卷</span></a></li>
				<li><a href="finish/search"><i class="icon icon-pencil"></i> <span>批改试卷</span></a></li>
				<li><a href="finish/search1"><i class="icon icon-th"></i> <span>考生成绩</span></a></li>
				<li class="active"><a href="teacher_all/query"><i class="icon icon-th"></i> <span>管理题库</span></a></li>
				</ul>
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
				<h1>管理题库</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>
				<a href="#" class="current">管理题库</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th"></i>
								</span>
								<h5>选择题</h5>
							</div>
							<div class="widget-content nopadding">
					
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>题目</th>
											<th>选项A</th>
											<th>选项B</th>
											<th>选项C</th>
											<th>选项D</th>
											<th>添加</th>
											<th>删除</th>
										</tr>
									</thead>
									<tbody>
									  <c:forEach var="choice" items="${choicelist}">
					            <tr>
					                <td><c:out value="${choice.ctitle}"/></td>
					                <td valign="top"><input type="radio" name="${choice.cid}" value="A">A、${choice.a}</td> 
	                                <td valign="top"><input type="radio" name="${choice.cid}" value="B">B、${choice.b}</td> 
	                                <td valign="top"><input type="radio" name="${choice.cid}" value="C">C、${choice.c}</td> 
	                                <td valign="top"><input type="radio" name="${choice.cid}" value="D">D、${choice.d}</td>
	                                <td><a href="teacher_select/add1toPaper?cid=${choice.cid}">添加到试卷</a></td>
					                <td><a href="teacher_all/deleteC?cid=${choice.cid}">删除</a></td>
					             
					            </tr>
					                 </c:forEach>
										
									</tbody>
									
								</table>	
														
							</div>
						</div>
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<input type="checkbox" id="title-checkbox" name="title-checkbox" />
								</span>
							<h5>填空题</h5>
							</div>
							<div class="widget-content nopadding">
							
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>题目</th>
											<th>回答</th>
											<th>添加</th>
											<th>删除</th>
										</tr>
									</thead>
									<tbody>
									  <c:forEach var="blank" items="${blanklist}">
					            <tr>
					             <td><c:out value="${blank.btitle}"/></td>
					               <td><input type="text" name="answer"></td>
					                <td><a href="teacher_select/add2toPaper?bid=${blank.bid}">添加到试卷</a></td>
					               <td><a href="teacher_all/deleteB?bid=${blank.bid}">删除</a></td>
					            </tr>
					                 </c:forEach>
										
									</tbody>
									
								</table>	
													
							</div>
						</div>
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-th"></i>
								</span>
							<h5>阅读题</h5>
							</div>
							<div class="widget-content nopadding">
		
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>题目</th>
											<th>回答</th>
											<th>添加</th>
											<th>删除</th>
										</tr>
									</thead>
									<tbody>
									  <c:forEach var="reading" items="${readinglist}">
					            <tr>
					             <td><c:out value="${reading.rtitle}"/></td>
					               <td><input type="text" name="answer"></td>
					               <td><a href="teacher_select/add3toPaper?rid=${reading.rid}">添加到试卷</a></td>
					               <td><a href="teacher_all/deleteR?rid=${reading.rid}">删除</a></td>
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
              		
	</body>
</html>

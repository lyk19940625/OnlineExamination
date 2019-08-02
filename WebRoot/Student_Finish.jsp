<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

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
	 <script language="javascript">
function checkform(){
	alert("出题成功！");
	}
</script>
</head>
	<body>
		
		
		<div id="header">
			<h1><a href="./dashboard.html">Unicorn Admin</a></h1>		
		</div>
		
		<div id="search">
			<input type="text" placeholder="Search here..." /><button type="submit" class="tip-right" title="Search"><i class="icon-search icon-white"></i></button>
		</div>
		<div id="user-nav" class="navbar navbar-inverse">
            <ul class="nav btn-group">
                <li class="btn btn-inverse"><a title="" href="#"><i class="icon icon-user"></i> <span class="text">个人中心</span></a></li>
                <li class="btn btn-inverse dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">信息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
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
				<li><a href="exam/search_title"><i class="icon icon-pencil"></i> <span>在线考试</span></a></li>
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
		 <form action="exam/teacher_save" method="post" class="form-horizontal" />
			
			<div id="content-header">
				<h1>我的试卷</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> </a>
				<a href="#" class="tip-bottom">我的试卷</a>
			</div>
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
					<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>试卷</h5>
									
							</div>
							<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">试卷名</label>
										<div class="controls">
									   <td valign="top"><input type="text" style="border:0px;" name="examtitle" value="${finish.examtitle}" readonly></td>
									     <td valign="top"><input type="hidden" style="border:0px;" name="finishid" value="${finish.finishid}"></td> 
									     <td><input type="hidden" name="state" value="已批改"/></td>
										</div>
									</div>
							
			<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>考生</th>
												<th>时间</th>
													<th>总分</th>
										</tr>
									</thead>
									<tbody>
					            <tr>
					              <td valign="top"><input type="text" style="border:0px;" name="uname" value="${finish.uname}" readonly></td> 
					            <td valign="top"><input type="text" style="border:0px;" value="60分钟" readonly></td> 
					           <td valign="top"><input type="text" style="border:0px;color:red;" name="totalscore" value="${finish.totalscore}" readonly/></td> 
					            </tr>
									</tbody>
									
								</table>	
				
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>选择题1</h5>
									
							</div>
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>考生答案</th>
											<th>给分</th>
											<th>解答</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                             <td valign="top"><input type="text" style="border:0px;" name="myanswer1" value="${finish.myanswer1}" readonly></td> 
	                              <td valign="top"><input type="text" style="border:0px;color:red;" name="score1" value="${finish.score1}" readonly></td> 
	                               <td valign="top"><input type="text" style="border:0px;color:red;" name="answer1" value="${finish.answer1}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;" name="choicetitle1" readonly>${finish.choicetitle1}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>选项A</th>
											<th>选项B</th>
											<th>选项C</th>
											<th>选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                               <td valign="top"><input type="text" style="border:0px;" name="choicea1" value="${finish.choicea1}" readonly/></td> 
	                                <td valign="top"><input type="text" style="border:0px;" name="choiceb1" value="${finish.choiceb1}" readonly/></td> 
	                                 <td valign="top"><input type="text" style="border:0px;" name="choicec1" value="${finish.choicec1}" readonly/></td> 
	                                  <td valign="top"><input type="text" style="border:0px;" name="choiced1" value="${finish.choiced1}" readonly/></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>选择题2</h5>
									
						</div>
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>考生答案</th>
											<th>给分</th>
											<th>解答</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                             <td valign="top"><input type="text" style="border:0px;" name="myanswer2" value="${finish.myanswer2}" readonly></td> 
	                              <td valign="top"><input type="text" style="border:0px;color:red;" name="score2" value="${finish.score2}" readonly></td> 
	                               <td valign="top"><input type="text" style="border:0px;color:red;" name="answer2" value="${finish.answer2}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;" name="choicetitle2" readonly>${finish.choicetitle2}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>选项A</th>
											<th>选项B</th>
											<th>选项C</th>
											<th>选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                               <td valign="top"><input type="text" style="border:0px;" name="choicea2" value="${finish.choicea2}" readonly/></td> 
	                                <td valign="top"><input type="text" style="border:0px;" name="choiceb2" value="${finish.choiceb2}" readonly/></td> 
	                                 <td valign="top"><input type="text" style="border:0px;" name="choicec2" value="${finish.choicec2}" readonly/></td> 
	                                  <td valign="top"><input type="text" style="border:0px;" name="choiced2" value="${finish.choiced2}" readonly/></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
						<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>选择题3</h5>
							</div>
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>考生答案</th>
											<th>给分</th>
											<th>解答</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                             <td valign="top"><input type="text" style="border:0px;" name="myanswer3" value="${finish.myanswer3}" readonly></td> 
	                              <td valign="top"><input type="text" style="border:0px;color:red;" name="score3" value="${finish.score3}" readonly></td> 
	                               <td valign="top"><input type="text" style="border:0px;color:red;" name="answer3" value="${finish.answer3}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;" name="choicetitle3" readonly>${finish.choicetitle3}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>选项A</th>
											<th>选项B</th>
											<th>选项C</th>
											<th>选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                               <td valign="top"><input type="text" style="border:0px;" name="choicea3" value="${finish.choicea3}" readonly/></td> 
	                                <td valign="top"><input type="text" style="border:0px;" name="choiceb3" value="${finish.choiceb3}" readonly/></td> 
	                                 <td valign="top"><input type="text" style="border:0px;" name="choicec3" value="${finish.choicec3}" readonly/></td> 
	                                  <td valign="top"><input type="text" style="border:0px;" name="choiced3" value="${finish.choiced3}" readonly/></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
							</div>

							<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>选择题4</h5>
							</div>
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>考生答案</th>
											<th>给分</th>
											<th>解答</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                             <td valign="top"><input type="text" style="border:0px;" name="myanswer4" value="${finish.myanswer4}" readonly></td> 
	                              <td valign="top"><input type="text" style="border:0px;color:red;" name="score4" value="${finish.score4}" readonly></td> 
	                               <td valign="top"><input type="text" style="border:0px;color:red;" name="answer4" value="${finish.answer4}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;" name="choicetitle4" readonly>${finish.choicetitle4}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>选项A</th>
											<th>选项B</th>
											<th>选项C</th>
											<th>选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                               <td valign="top"><input type="text" style="border:0px;" name="choicea1" value="${finish.choicea4}" readonly/></td> 
	                                <td valign="top"><input type="text" style="border:0px;" name="choiceb1" value="${finish.choiceb4}" readonly/></td> 
	                                 <td valign="top"><input type="text" style="border:0px;" name="choicec1" value="${finish.choicec4}" readonly/></td> 
	                                  <td valign="top"><input type="text" style="border:0px;" name="choiced1" value="${finish.choiced4}" readonly/></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
							</div>
							<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>选择题5</h5>
					</div>
								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>考生答案</th>
											<th>给分</th>
											<th>解答</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                             <td valign="top"><input type="text" style="border:0px;" name="myanswer5" value="${finish.myanswer5}" readonly></td> 
	                              <td valign="top"><input type="text" style="border:0px;color:red;" name="score5" value="${finish.score5}" readonly></td> 
	                               <td valign="top"><input type="text" style="border:0px;color:red;" name="answer5" value="${finish.answer5}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;" name="choicetitle5" readonly>${finish.choicetitle5}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>选项A</th>
											<th>选项B</th>
											<th>选项C</th>
											<th>选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                               <td valign="top"><input type="text" style="border:0px;" name="choicea5" value="${finish.choicea5}" readonly/></td> 
	                                <td valign="top"><input type="text" style="border:0px;" name="choiceb5" value="${finish.choiceb5}" readonly/></td> 
	                                 <td valign="top"><input type="text" style="border:0px;" name="choicec5" value="${finish.choicec5}" readonly/></td> 
	                                  <td valign="top"><input type="text" style="border:0px;" name="choiced5" value="${finish.choiced5}" readonly/></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
							</div>
									
															<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>填空题1</h5>
									
							</div>
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>考生答案</th>
											<th>给分</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><input type="text" style="border:0px;" name="myanswer6" value="${finish.myanswer6}" readonly></td> 
	                                 <td valign="top"><input type="text" style="border:0px;color:red;" name="score6" value="${finish.score6}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;" name="blanktitle1" readonly>${finish.blanktitle1}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">解答</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;color:red;" name="answer6" readonly>${finish.answer6}</textarea></td> 
										</div>
									</div>
																								<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
								<h5>填空题2</h5>
					</div>
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>考生答案</th>
											<th>给分</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><input type="text" style="border:0px;" name="myanswer7" value="${finish.myanswer7}" readonly></td> 
	                                 <td valign="top"><input type="text" style="border:0px;color:red;" name="score7" value="${finish.score7}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;" name="blanktitle2" readonly>${finish.blanktitle2}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">解答</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;color:red;" name="answer7" readonly>${finish.answer7}</textarea></td> 
										</div>
									</div>
															<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>填空题3</h5>
							</div>
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>考生答案</th>
											<th>给分</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><input type="text" style="border:0px;" name="myanswer8" value="${finish.myanswer8}" readonly></td> 
	                                 <td valign="top"><input type="text" style="border:0px;color:red;" name="score8" value="${finish.score8}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px;" name="blanktitle3" readonly>${finish.blanktitle3}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">解答</label>
										<div class="controls">
									    <td valign="top"><textarea style="border:0px; color:red;" name="answer8" readonly>${finish.answer8}</textarea></td> 
										</div>
									</div>
									<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>阅读题1</h5>
									
							</div>
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>考生答案</th>
												<th>给分</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><textarea style="border:0px;" name="myanswer9" readonly>${finish.myanswer9}</textarea></td> 
	                                  <td valign="top"><input type="text" style="border:0px;color:red;" name="score9" value="${finish.score9}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									       <td valign="top"><textarea style="border:0px;" name="readingtitle1" readonly>${finish.readingtitle1}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">解答</label>
										<div class="controls">
									      <td valign="top"><textarea style="border:0px;color:red;" name="answer9" readonly>${finish.answer9}</textarea></td> 
										</div>
									</div>
								<div class="widget-box">
							<div class="widget-title">
								<span class="icon">
									<i class="icon-align-justify"></i>									
								</span>
									<h5>阅读题2</h5>
							</div>
								<table class="table table-bordered table-striped">
									<thead>
										<tr>
											<th>考生答案</th>
												<th>给分</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><textarea style="border:0px;" name="myanswer10" readonly>${finish.myanswer10}</textarea></td> 
	                                  <td valign="top"><input type="text" style="border:0px;color:red;" name="score10" value="${finish.score10}" readonly></td> 
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">题目</label>
										<div class="controls">
									       <td valign="top"><textarea style="border:0px;" name="readingtitle2" readonly>${finish.readingtitle2}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">解答</label>
										<div class="controls">
									      <td valign="top"><textarea style="border:0px;color:red;" name="answer10" readonly>${finish.answer10}</textarea></td> 
										</div>
									</div>
										
				
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

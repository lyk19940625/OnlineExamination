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
			<a href="#" class="visible-phone"><i class="icon icon-th-list"></i>组卷</a>
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
				<li class="active"><a href="Teacher_Exam.jsp"><i class="icon icon-tint"></i> <span>组卷</span></a></li>
				<li><a href="finish/search"><i class="icon icon-pencil"></i> <span>批改试卷</span></a></li>
				<li><a href="finish/search1"><i class="icon icon-th"></i> <span>考生成绩</span></a></li>
				<li><a href="teacher_all/query"><i class="icon icon-th"></i> <span>管理题库</span></a></li>
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
		 <form action="exam/teacher_save" method="post" class="form-horizontal" />
			
			<div id="content-header">
				<h1>组卷</h1>
				<div class="btn-group">
					<a class="btn btn-large tip-bottom" title="Manage Files"><i class="icon-file"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Users"><i class="icon-user"></i></a>
					<a class="btn btn-large tip-bottom" title="Manage Comments"><i class="icon-comment"></i><span class="label label-important">5</span></a>
					<a class="btn btn-large tip-bottom" title="Manage Orders"><i class="icon-shopping-cart"></i></a>
				</div>
			</div>
			<div id="breadcrumb">
				<a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> </a>
				<a href="#" class="tip-bottom">组卷</a>
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
									    <td valign="top"><input type="text" name="examtitle"/></td> 
										</div>
									</div>
							
			<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>出卷人</th>
												<th>时间</th>
													<th>总分</th>
										</tr>
									</thead>
									<tbody>
					            <tr>
					             <td><input type="text" name="eteacher"></td>
					              <td><input type="text"></td>
					              <td><input type="text"></td>
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
											<th>选择章节</th>
											<th>选择答案</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
	                                <td valign="top"><label>A<input type="checkbox" name="answer1" value="A"id=answer1/> B<input type="checkbox" name="answer1" value="B"id=answer1/>C<input type="checkbox" name="answer1" value="C"id=answer1/>D<input type="checkbox" name="answer1" value="D"id=answer1/></label></td> 
	                              
					                <td><a href="teacher_select/add1">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
									    <td valign="top"><textarea name="choicetitle1">${select_title1}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>编写选项A</th>
											<th>编写选项B</th>
											<th>编写选项C</th>
											<th>编写选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><input type="text" name="choicea1" value="${select_choicea1}"/></td> 
	                                <td valign="top"><input type="text" name="choiceb1" value="${select_choiceb1}"/></td> 
	                                <td valign="top"><input type="text" name="choicec1" value="${select_choicec1}"/></td>
	                                <td valign="top"><input type="text" name="choiced1" value="${select_choiced1}"/></td>
					            
					             
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
											<th>选择章节</th>
											<th>选择答案</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
	                                <td valign="top"><label>A<input type="checkbox" name="answer2" value="A"id=answer2/> B<input type="checkbox" name="answer2" value="B"id=answer2/>C<input type="checkbox" name="answer2" value="C"id=answer2/>D<input type="checkbox" name="answer2" value="D"id=answer2/></label></td> 
	                              
					                  <td><a href="teacher_select/add2">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
									      <td valign="top"><textarea name="choicetitle2">${select_title2}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>编写选项A</th>
											<th>编写选项B</th>
											<th>编写选项C</th>
											<th>编写选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                            <td valign="top"><input type="text" name="choicea2" value="${select_choicea2}"/></td> 
	                                <td valign="top"><input type="text" name="choiceb2" value="${select_choiceb2}"/></td> 
	                                <td valign="top"><input type="text" name="choicec2" value="${select_choicec2}"/></td>
	                                <td valign="top"><input type="text" name="choiced2" value="${select_choiced2}"/></td>
					            
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
											<th>选择章节</th>
											<th>选择答案</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
	                                <td valign="top"><label>A<input type="checkbox" name="answer3" value="A"id=answer3/> B<input type="checkbox" name="answer3" value="B"id=answer3/>C<input type="checkbox" name="answer3" value="C"id=answer3/>D<input type="checkbox" name="answer3" value="D"id=answer3/></label></td> 
	                              
					               <td><a href="teacher_select/add3">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
							   <td valign="top"><textarea name="choicetitle3">${select_title3}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>编写选项A</th>
											<th>编写选项B</th>
											<th>编写选项C</th>
											<th>编写选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                              <td valign="top"><input type="text" name="choicea3" value="${select_choicea3}"/></td> 
	                                <td valign="top"><input type="text" name="choiceb3" value="${select_choiceb3}"/></td> 
	                                <td valign="top"><input type="text" name="choicec3" value="${select_choicec3}"/></td>
	                                <td valign="top"><input type="text" name="choiced3" value="${select_choiced3}"/></td>
					            
					            
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
											<th>选择章节</th>
											<th>选择答案</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
	                                <td valign="top"><label>A<input type="checkbox" name="answer4" value="A"id=answer4/> B<input type="checkbox" name="answer4" value="B"id=answer4/>C<input type="checkbox" name="answer4" value="C"id=answer4/>D<input type="checkbox" name="answer4" value="D"id=answer4/></label></td> 
	                              
					          <td><a href="teacher_select/add4">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
								   <td valign="top"><textarea name="choicetitle4">${select_title4}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>编写选项A</th>
											<th>编写选项B</th>
											<th>编写选项C</th>
											<th>编写选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                            <td valign="top"><input type="text" name="choicea4" value="${select_choicea4}"/></td> 
	                                <td valign="top"><input type="text" name="choiceb4" value="${select_choiceb4}"/></td> 
	                                <td valign="top"><input type="text" name="choicec4" value="${select_choicec4}"/></td>
	                                <td valign="top"><input type="text" name="choiced4" value="${select_choiced4}"/></td>
					            
					            
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
											<th>选择章节</th>
											<th>选择答案</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
	                                <td valign="top"><label>A<input type="checkbox" name="answer5" value="A"id=answer5/> B<input type="checkbox" name="answer5" value="B"id=answer5/>C<input type="checkbox" name="answer5" value="C"id=answer5/>D<input type="checkbox" name="answer5" value="D"id=answer5/></label></td> 
	                              
					                  <td><a href="teacher_select/add5">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
								   <td valign="top"><textarea name="choicetitle5">${select_title5}</textarea></td> 
										</div>
									</div>
							

								<table class="table table-bordered table-striped">
									
									<thead>
										<tr>
											<th>编写选项A</th>
											<th>编写选项B</th>
											<th>编写选项C</th>
											<th>编写选项D</th>
										
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                            <td valign="top"><input type="text" name="choicea5" value="${select_choicea5}"/></td> 
	                                <td valign="top"><input type="text" name="choiceb5" value="${select_choiceb5}"/></td> 
	                                <td valign="top"><input type="text" name="choicec5" value="${select_choicec5}"/></td>
	                                <td valign="top"><input type="text" name="choiced5" value="${select_choiced5}"/></td>
					            
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
											<th>选择章节</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"> 选择章节： <select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
										        <td><a href="teacher_select/add6">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
									    <td valign="top"><textarea name="blanktitle1">${select_title6}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">编写答案</label>
										<div class="controls">
									    <td valign="top"><textarea name="answer6">${select_answer6}</textarea></td> 
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
											<th>选择章节</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"> 选择章节： <select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
										        <td><a href="teacher_select/add7">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
									    <td valign="top"><textarea name="blanktitle2">${select_title7}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">编写答案</label>
										<div class="controls">
									    <td valign="top"><textarea name="answer7">${select_answer7}</textarea></td> 
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
											<th>选择章节</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"> 选择章节： <select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
										        <td><a href="teacher_select/add8">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
									    <td valign="top"><textarea name="blanktitle3">${select_title8}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">编写答案</label>
										<div class="controls">
									    <td valign="top"><textarea name="banswer8">${select_answer8}</textarea></td> 
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
											<th>选择章节</th>
												<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"> 选择章节： <select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
										        <td><a href="teacher_select/add9">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
									    <td valign="top"><textarea name="readingtitle1">${select_title9}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">编写答案</label>
										<div class="controls">
									    <td valign="top"><textarea name="answer9">${select_answer9}</textarea></td> 
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
											<th>选择章节</th>
											<th>从题库选择</th>
										</tr>
									</thead>
									<tbody>
									
					            <tr>
	                                <td valign="top"><select class="center-block">
												<option name="Pointid" value="1"/>第一章
													<option name="Pointid" value="2"/>第二章
														<option name="Pointid" value="3"/>第三章
											</select></td> 
										        <td><a href="teacher_select/add10">从题库挑选题目</a></td>
					            </tr>
					             
										
									</tbody>
									
								</table>
					<div class="control-group">
										
										<div class="controls">
											<input type="text" style="display:none"/>
										</div>
									</div>
							
									<div class="control-group">
										<label class="control-label">编写题目</label>
										<div class="controls">
									    <td valign="top"><textarea name="readingtitle2">${select_title10}</textarea></td> 
										</div>
									</div>
							<div class="control-group">
										<label class="control-label">编写答案</label>
										<div class="controls">
									    <td valign="top"><textarea name="answer10">${select_answer10}</textarea></td> 
										</div>
									</div>
										
								 <div class="form-actions">
                    <span class="pull-left"><input type="submit" class="btn btn-inverse" value="完成出卷" onclick="checkform()"/></span>
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

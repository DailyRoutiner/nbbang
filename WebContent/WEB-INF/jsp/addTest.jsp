    <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<<<<<<< HEAD
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
=======
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="utf-8">
>>>>>>> master
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ChoiSeongJun">
    <meta name="keyword" content="alarm, credit, system, friends">

    <title>N-BBANG</title>
	<link rel="shortcut icon" href="favicon.ico">
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">   
   
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

  </head>

  <body>

  <section id="container" >
<<<<<<< HEAD
   <div id="topLeftBar"></div>
=======
      <div id="topbar"></div>
    <div id="leftSideBar"></div>
>>>>>>> master
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
          
          	<!-- BASIC FORM ELELEMNTS -->
<<<<<<< HEAD
          	<form class="form-horizontal style-form" action="addMeeting.do" method="post">
          	<div class="row mt">
          		<div class="col-md-12">
                  <div class="content-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i>모임을 추가해 주세요.</h4>
                      
                              
                              	<div>
									<label class="col-sm-2 col-sm-2 control-label">유형</label>
									<select class="form-control" name="meetingType" id="meetingType">
										<option value="2">행사</option>
										<option value="3">회식</option>
									</select>
								</div>
								
                              <label class="col-sm-2 col-sm-2 control-label">모임명</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="meetName" id="meetName" placeholder="모임명이 무엇인가요."><br/><br/>
                              </div>
                              
                              <label class="col-sm-2 col-sm-2 control-label">장소</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="place" id="place" placeholder="장소를 작성해 주세요."><br/><br/>
                              </div>
                              
                              <label class="col-sm-2 col-sm-2 control-label">날짜</label>
                              <div class="col-sm-10">
                                  <input type="date" class="form-control" name="meetDate" id="meetDate" placeholder="날짜를 선택해 주세요."><br/><br/>
                              </div>
                          </div>
                      
          			</div>
          		</div>
          	
 
				<div class="row mt">
	                  <div class="col-md-12">
	                  	  <div class="content-panel">
	                  	  	  <h4><i class="fa fa-angle-right"></i>모임에 추가할 친구를 선택하세오</h4>
	                  	  	
		                      <table class="table">
		                    
		                          <tbody>
		                          <tr>
		                              <td></td>
		                              <td>사진</td>
		                              <td>이름</td>
		                              <td>email</td>
		                          </tr>
		                          <c:forEach items="${requestScope.memberView}" var="member">
		                          <tr>
		                             <td><input type= "checkbox" name="memberIndex" value="${member.memno}">     
		                             </td>
		                             <td>${member.mempic}사진이들어가용</td>
								     <td>${member.memname}</td>
								     <td>${member.email}</td>
		                          </tr>
		             
		                          </c:forEach>
		                       
		                          </tbody>
		                      </table>
		                    
	                  	  </div><!--/content-panel -->
	                  </div><!-- /col-md-12 -->
	                 
	                </div>
	                
	                 <div class="row mt">
	                  <div class="col-md-12">
	                     <center>
	                                    <input type="hidden" name = "meetNo" value='${requestScope.meetNo}'>
										<button type="submit" class="btn btn-info" name="command" value="addSpend">추가</button>
										<button type="button" class="btn btn-default" onclick="history.back()">취소</button>
						</center>
						</div>
					</div>
	                 </form>

=======
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h4 class="mb"><i class="fa fa-angle-right"></i></h4>
                      <form class="form-horizontal style-form" action="addSpend.do" method="post">
                              <div>
                              	<div>
									<tr>
									<label class="col-sm-2 col-sm-2 control-label">유형</label><br/><br/><select class="form-control" name="spendCategory" id="spendCategory">
										<option value="2">1</option>
										<option value="3">2</option>
									</select>
									<br/><br/>
									</tr>
								</div>
                              <label class="col-sm-2 col-sm-2 control-label">w</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="spendMemo" id="spendMemo"><br/><br/>
                              </div>
                              
                              <label class="col-sm-2 col-sm-2 control-label">t</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="spendLocation" id="spendLocation"><br/><br/>
                              </div>
                              
                              <label class="col-sm-2 col-sm-2 control-label">k</label>
                              <div class="col-sm-10">
                                  <input type="date" class="form-control" name="spendDate" id="spendDate"><br/><br/>
                              </div>
									<center>
										<button type="submit" class="btn btn-info" name="command" value="addSpend">추가</button>
										<button type="button" class="btn btn-default" onclick="history.back()">취소</button>
									</center>
                          </div>
                       </form>
          			</div>
          		</div>
          	</div><!-- /row -->
>>>>>>> master
          	
          	
		</section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
<<<<<<< HEAD
    <script type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
=======
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
>>>>>>> master


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
   
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
	 <script src="assets/js/chart-master/Chart.js"></script>
    <script src="assets/js/chartjs-conf.js"></script>	
	<script src="assets/js/meeting.js"></script>
	<script src="assets/js/form-component.js"></script>    
    
    
  <script>
      //custom select box
      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>
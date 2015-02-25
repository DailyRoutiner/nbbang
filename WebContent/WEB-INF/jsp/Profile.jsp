<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import = "model.domain.MemberDTO" %>
<%@ page import = "model.dao.MemberDAOImpl, java.util.*" %>
<%@ page import = "sub.controller.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ChoiSeongJun">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>N-BBANG</title>
	<style type="text/css">
		.img_button {
        background: url(money1.png) no-repeat;
        border: none;
        width: 110px;
        height: 110px;
        cursor: pointer;
      }

		</style>
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    <link rel="stylesheet" type="text/css" href="assets/js/gritter/css/jquery.gritter.css" />
    <link rel="stylesheet" type="text/css" href="assets/lineicons/style.css">    
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <link href="assets/css/icon.css" rel = "stylesheet">

    
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
   
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
	 <script src="assets/js/chart-master/Chart.js"></script>
    <script src="assets/js/chartjs-conf.js"></script>	
	<script src="assets/js/meeting.js"></script>
  </head>
  <body>
   <%
		MemberDTO dto = (MemberDTO)session.getAttribute("dto");
	 %>	
  

  <section id="container" >
  
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
    <div id="topLeftBar"></div>
    <!-- id와 pw 체크 -->
   							<%
			        			if(session.getAttribute("loginStatus")==null){
	        				%>
			        		<!-- 	<font size =4><a href="loginpage.html" class = "logout">Login</a></font> -->
			        		<%
			        			}else if(session.getAttribute("dto")==null){
			        		%>
			        		<script>
			        			alert("id/pw가 틀렸습니다. 다시 입력하세요");
			        			history.back();
			        		</script>
			        		<font size =4><a href="Test.jsp">Login</a></font>
			        		<%
			        			}else{}
			        		%>
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->

      <section id="main-content">
          <section class="wrapper">
      		<div class="row mt">
      			<!-- 왼쪽창 -->
      			<div class="col-lg-6 col-md-6 col-sm-12">
      			
      				<! -- BASIC PROGRESS BARS -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Photo</h4>
	      				<div class="showback">
						<!--사진 집어넣기-->
						          
                      <!-- PICTURE UPLOAD -->
                      <table>
					<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><img src="<%=dto.getMempic()%>" style="width:128px;height:128px"><br>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					
                     <td>               
                	<img src="${sessionScope.mempic}" style="width:128px;height:128px">
                	</td>
                	</tr>
                	</table><br>
               		<form action="picEnroll.do" method="post" class="form-signin"  enctype="multipart/form-data">
							<input type="hidden" name="command" value="picEnroll">
							<label for="upload_bigfile" class="sr-only">upload_bigfile</label> 
							<input type="file" id="upload_bigfile" name="upload_bigfile" class="form-control" placeholder="Upload_Bigfile">
							<br>
							<button class="btn btn-info" id="picEnroll" type="submit">Enroll</button>
							<button class="btn btn-info" type="reset">Reset</button>
					</form>
					
                <!-- PICTURE UPLOAD -->
						</div>
      				</div><!--/showback -->
      				
      				<! -- STRIPPED PROGRESS BARS -->
      				<div class="showback">
      					<h4><i class="fa fa-angle-right"></i> Personal Information</h4>
						<div class="showback">
						 <form class="form-horizontal style-form" method="post" action = "updateName.do">
							<input type = "hidden" value="updateName.do" name= "command">
                             <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Name</label>
                              <div class="col-sm-10">
                                  <input type="text" class="form-control" name="memname">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label">Email</label>
                         <!--      <div class="col-sm-10"> -->
                              <h3><%=dto.getEmail() %></h3>
                         		<input type="hidden" class="form-control" name="email" value = "${sessionScope.id}">
                              <!-- </div> -->	
                          	</div>
                          	<button type="submit" class="btn btn-info" name="command" value="updateName">확인</button>
                          </form>
					</div><!-- /showback -->
				</div>
			</div>
			<!-- 오른쪽창 -->
				<div class="col-lg-6 col-md-6 col-sm-12">
      				<!-- 로그인 계정 -->
      				<div class="showback">
      					 <h4><i class="fa fa-angle-right"></i> Login Account</h4>
      					  
                      <form class="form-horizontal style-form" method="post">
                      	<div class="form-group">
                              <label class="col-md-6 col-sm-20 control-label">Phone Number</label>
                               <a class="col-sm-6" data-toggle="modal" data-target="#phonenumber">휴대폰 번호 설정</a>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-6 col-sm-6 control-label">Card PassWord</label>
                              <a class="col-sm-6" data-toggle="modal" data-target="#cardpassword">카드번호 변경</a>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-6 col-sm-20 control-label">비밀번호 설정</label>
                               <a class="col-sm-6" data-toggle="modal" data-target="#password">비밀번호 변경</a>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-6 col-sm-20 control-label">ACCOUNT</label>
                            <a class="col-sm-6" data-toggle="modal" data-target="#account">계좌번호 설정</a>
                          </div>
                              <div class="form-group">
                              <label class="col-sm-6 col-sm-6 control-label">DEVICE ID</label>
                              <a class="col-sm-6" data-toggle="modal" data-target="#deviceid">Device ID 설정</a>
                              </div>
                          </div>
                        </form>
                        
                         <form class="form-horizontal style-form" method="post" action = "deleteMember.do">
											<input type = "hidden" value="deleteMember" name= "command">
											<input type="hidden" class="form-control" name="email" value = "${sessionScope.id}">
											<button type="submit" class="btn btn-info" name="command" value="deleteMember">탈퇴</button>
						</form>
      				</div><!-- /showback -->
      			</div><!-- /col-lg-6 -->
						
						</div>
		</section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->
		<!-- 전화번호 변경 모달 -->
 				 <div class="modal fade" id="phonenumber" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content" style="height:200px">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel">휴대번호 설정</h4>
						      </div>
						      <div class="modal-body">
						          	<!-- BASIC FORM ELELEMNTS -->
                  					<div class="form-panel">
                     					 <form class="form-horizontal style-form" method="post" action = "updatePhone.do">
											<input type = "hidden" value="updatePhone" name= "command">
        									<div class="form-group">
        						<label class="col-sm-3 col-sm-6 control-label">휴대폰번호</label>
        						<div class="col-sm-10">
                              		<input type="text" class="form-control" name="phonenumber">
                              		<input type="hidden" class="form-control" name="email" value = "${sessionScope.id}">
                              	</div>
                              	<br>
          							<div class="col-sm-10">
          							<button type="submit" class="btn btn-info" name="command" value="updatePhone">확인</button>
          							</div>
						      </div>
						     </form>
						    </div>
						   </div>
						 </div>
						</div>
					   </div>
		<!-- 카드번호 변경 모달 -->			   
					    <div class="modal fade" id="cardpassword" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel">카드번호 설정</h4>
						      </div>
						      <div class="modal-body">
						          	<!-- BASIC FORM ELELEMNTS -->
                  					<div class="form-panel">
                     					 <form class="form-horizontal style-form" method="post" action = "updateCardPassWord.do">
											<input type = "hidden" value="updateCardPassWord" name= "command">
        									<div class="form-group">
        										<label class="col-sm-3 col-sm-6 control-label">카드비밀번호</label>
        										<br><br>
        									<div class="col-sm-10">
                              					<input type="text" class="form-control" name="cardpw">
                              					<input type="hidden" class="form-control" name="email" value = "${sessionScope.id}">
                              					<br>
                              				</div>
          									<div class="col-sm-10">
          										<button type="submit" class="btn btn-info" name="command" value="updateCardPassWord">확인</button>
          									</div>
						      		</div>
						     	</form>
						    </div>
						   </div>
						 </div>
						</div>
					   </div>
		<!-- 비밀번호 변경 모달 -->				   
					   	 <div class="modal fade" id="password" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel">비밀번호 설정</h4>
						      </div>
						      <div class="modal-body">
						          	<!-- BASIC FORM ELELEMNTS -->
                  					<div class="form-panel">
                     					 <form class="form-horizontal style-form" method="post" action = "updatePassWord.do">
											<input type = "hidden" value="updatePassWord" name= "command">
        									<div class="form-group">
        										<label class="col-sm-3 col-sm-6 control-label"  >비밀번호</label>
        										<br><br>
        									<div class="col-sm-10">
                              					<input type="text" class="form-control" name="mempw">
                              					<input type="hidden" class="form-control" name="email" value = "${sessionScope.id}">
                              					<br>
                              				</div>
          									<div class="col-sm-10">
          										<button type="submit" class="btn btn-info" name="command" value="updatePassWord">확인</button>
          									</div>
						      		</div>
						     	</form>
						    </div>
						   </div>
						  </div>
						</div>
					   </div>
		<!-- 계좌번호 변경 모달 -->				 
					  <div class="modal fade" id="account" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel">계좌번호 설정</h4>
						      </div>
						      <div class="modal-body">
						          	<!-- BASIC FORM ELELEMNTS -->
                  					<div class="form-panel">
                     						 <form class="form-horizontal style-form" method="post" action = "updateAccount.do">
												<input type = "hidden" value="updateAccount" name= "command">
        									<div class="form-group">
        						<label class="col-sm-3 col-sm-6 control-label">계좌번호 설정</label>
        						<div class="col-sm-10">
                              		<input type="text" class="form-control" name="account">
                              			<input type="hidden" class="form-control" name="email" value = "${sessionScope.id}">
                              	</div>
                              	<br>
          							<div class="col-sm-10">
          							<button type="submit" class="btn btn-info" name="command" value="account">확인</button>
          							</div>
						      </div>
						     </form>
						    </div>
						   </div>
						 </div>
						</div>
					   </div>
	<!-- 디바이스 변경 모달 -->					   
					    <div class="modal fade" id="deviceid" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel">Device ID 설정</h4>
						      </div>
						      <div class="modal-body">
						          	<!-- BASIC FORM ELELEMNTS -->
                  					<div class="form-panel">
                     					 <form class="form-horizontal style-form" method="post" action = "updateDeviceId.do">
												<!-- <input type = "hidden" value="updateDeviceId" name= "deviceid"> -->
												<input type="hidden" class="form-control" name="email" >
        									<div class="form-group">
        						<label class="col-sm-3 col-sm-6 control-label">Device ID 설정</label>
        						<div class="col-sm-10">
                              		<input type="text" class="form-control" name="deviceid">
                              	</div>
                              	<br>
          							<div class="col-sm-10">
          							<button type="submit" class="btn btn-info" name="command" value="updateDeviceId">확인</button>
          							</div>
						      </div>
						     </form>
						   </div>
						  </div>
						 </div>
						</div>
					   </div>

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2014 - Alvarez.is
              <a href="blank.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>
    <script type="text/javascript">
      //custom select box

      /* $(function(){
          $('select.styled').customSelect();
      }); */
      $(document)	.ready(function() {
      $("#picEnroll").click(function() {
			$.ajax({
				url : "picEnroll.do",
				type : "post",
				dataType : "json",
				//data : "vo=" + $("#upload_bigfile").val(),
				success : function(data) {
					alert("ajax 도착");
					/* if (data == "ok") {
						alert("결제 성공");
					} else {
						alert("결제 실패");
					} */
				},
				error : function(data) {
					alert(data + ' : 사진 등록 실패');
				}
			}); 
		})
		});

  </script>
  </body>
</html>

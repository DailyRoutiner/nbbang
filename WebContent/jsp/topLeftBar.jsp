<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
  <link href="assets/css/bootstrap.css" rel="stylesheet">
  <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>

    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />

		<!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="메뉴"></div>
              </div>
            <!--logo start-->
            <form action="login.do" method="post"><a class = "logo" href="loginpage.jsp"><b>N-BBANG</b></a></form>
            <!--logo end-->
            <div class="nav notify-row " id="top_menu" >
                <!--  notification start -->
                <ul class="nav  top-menu">
                    <!-- inbox dropdown start-->
                    <li id="header_inbox_bar" class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
                            <i class="fa fa-envelope-o"></i>
                            <span class="badge bg-theme">N</span>
                        </a>
                        <ul class="dropdown-menu extended inbox">
                            <div class="notify-arrow notify-arrow-green"></div>
                            <li>
                                <p class="green">받은 메세지 목록</p>
                            </li>
                              <li id="listTable"></li>
                            <li>
                                <a href="meeting.jsp">See all messages</a>
                            </li>
            
                        </ul>
                        
                    </li>
                    
                     <li id="header_inbox_bar" class="dropdown">
                        <input type="image" width="30" height="30" src="assets/img/category/People.png"> 
                     </li>
                    <li id="header_inbox_bar" class="dropdown">
                        &nbsp;&nbsp;&nbsp;
                     </li>
                     <li id="header_inbox_bar" class="dropdown">
                        <input type="image" width="25" height="25" src="assets/img/category/pay.png"> 
                     </li>
                     
                     <!-- inbox dropdown end -->                     
                </ul>
                <!--  notification end -->
  
            </div>
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
            	</ul>
            </div>
        </header>
      <!--header end-->
	  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ page import = "model.domain.MemberDTO" %>
	  <%@ page import = "model.dao.MemberDAOImpl, java.util.*" %>
	  <%@ page import = "sub.controller.*" %>
      <%
		MemberDTO dto = (MemberDTO)session.getAttribute("dto");
	  %>	
	  <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
       <script type="text/javascript">
    $(document).ready(function() {
    	var table="";
    		$.ajax({
						url : "selectMessage.do",
						type : "post",
						dataType : "json", //결과데이터타입
						success : 
							function(data) {
							$(data.list).each(
									function(index, item) {
										table += "<a href='index.html#'> <span class='photo'><img alt='avatar' src="+item.mempic+ "></span> <span id='listTable' class='subject'>"+
										"<span class='subject'> <span class='from'>"+item.memname+"</span>"
												+"<span class='time'>"+item.alramtime+"</span></span>"
												+"<span class='message'>"+item.content+"</span></span></a>";
									});
							$("#listTable").html(table);
						} ,
						error : function(err) {//실패했을때
							alert(err + " : 메세지 보기 실패");
						}
					});
    		
    });
    
	  </script>
  <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <!-- 프로필 사진 -->
      <section id="container">
	  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog" style="width:280px">
						    <div class="modal-content" align="center">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" style="color: white; font-size: x-large; font-weight: 1200; " id="myModalLabel">PROFILE</h4>
						        
						      </div>
						      
						      <div class="modal-body" style="height: 400px">
						      <!-- PROFILE 01 PANEL -->
							
							<div class="content-panel pn">
								<div>
								<img src="<%=dto.getMempic()%>" style="width:175px;height:240px">
								</div>
								
							<!-- 	<div class="profile-01 centered"> -->
									<form action="profile.do" method="post"><p><input type="submit" style="height:50px; width:175px; color: white; font-size: large; font-weight: 700; " class="profile-01 centered" value="<%=dto.getMemname()%>"></p></form>
								<!-- </div> -->
								<div class="centered">
									<h6><i class="fa fa-envelope"></i><br/><%=dto.getPhonenumber()%></h6>
								</div>
								<div class="centered">
									<h6><i class="fa fa-envelope"></i><br/><%=dto.getEmail()%></h6>
								</div>
							</div><!--/content-panel -->
							
						      </div>
						      </div>
						      </div>
						      </div>
						      
	  </section>
      
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
             
              	   <p class="centered"><a href="#" data-toggle="modal" data-target="#myModal"><img src="<%=dto.getMempic()%>" class="img-circle" width="80" height="80"></a></p>
              	  <h5 class="centered">${sessionScope.dto.memname }</h5>
              	
                  <li class="mt">
                      <h3><a href="#" data-toggle="modal" data-target="#myModal" style="font-size:30px; font-family: 'Open Sans', sans-serif;" >
                       <i class="fa fa-dashboard" style="font-size: large;" >
                          Member</i>
                      </a></h3>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;">
                            <i class="fa fa-desktop" style="font-size: large;">
                          Payment</i>
                      </a>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;">
                          <i class="fa fa-book" style="font-size: large;">
                          Meeting</i>
                      </a>
                      <ul class="sub">
                          <li>
                          <a  href="push_and_pay.html" style="font-size: large;">Payment & Message</a>
                          </li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs" style="font-size: large;">
                          Set Up</i>
                      </a>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->

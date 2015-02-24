<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    <link href="assets/css/bootstrap.css" rel="stylesheet">
  <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ page import = "model.domain.MemberDTO" %>
	  <%@ page import = "model.dao.MemberDAOImpl, java.util.*" %>
	  <%@ page import = "sub.controller.*" %>
      <%
		MemberDTO dto = (MemberDTO)session.getAttribute("dto");
	  %>	
	  <section id="container">
	  <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						  <div class="modal-dialog">
						    <div class="modal-content">
						      <div class="modal-header">
						        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						        <h4 class="modal-title" id="myModalLabel">프로필</h4>
						        
						      </div>
						      
						      <div class="modal-body">
						      <! -- PROFILE 01 PANEL -->
							<div class="content-panel pn">
								<div>
								<img src="<%=dto.getMempic()%>" style="width:175px;height:240px">
								</div>
								
								<div class="profile-01 centered">
								<a href="Profile.jsp">
									<p><%=dto.getMemname()%></p>
									</a>
								</div>
								<div class="centered">
									<h6><i class="fa fa-envelope"></i><br/><%=dto.getPhonenumber()%></h6>
								</div>
								<div class="centered">
									<h6><i class="fa fa-envelope"></i><br/><%=dto.getEmail()%></h6>
								</div>
							</div><! --/content-panel -->
						      </div>
						      </div>
						      </div>
						      </div>
						      
	  </section>
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
             
              	  <p class="centered"><a href="#" data-toggle="modal" data-target="#myModal"><img src="<%=dto.getMempic()%>" class="img-circle" width="100"></a></p>
              	  <h5 class="centered">${sessionScope.dto.memname }</h5>
              	
                  <li class="mt">
                      <a href="#" data-toggle="modal" data-target="#myModal">
                          <i class="fa fa-dashboard"></i>
                          <span>회비 추가 & 친구 선택</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>회비 관리</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="general.html">General</a></li>
                          <li><a  href="buttons.html">Buttons</a></li>
                          <li><a  href="panels.html">Panels</a></li>
                      </ul>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-cogs"></i>
                          <span>Components</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="calendar.html">Calendar</a></li>
                          <li><a  href="Profile.jsp">Gallery</a></li>
                          <li><a  href="todo_list.html">Todo List</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Extra Pages</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="blank.html">Blank Page</a></li>
                          <li><a  href="login.html">Login</a></li>
                          <li><a  href="lock_screen.html">Lock Screen</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Forms</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="form_component.html">Form Components</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Data Tables</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="basic_table.html">Basic Table</a></li>
                          <li><a  href="responsive_table.html">Responsive Table</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class=" fa fa-bar-chart-o"></i>
                          <span>Charts</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="morris.html">Morris</a></li>
                          <li><a  href="chartjs.html">Chartjs</a></li>
                      </ul>
                  </li>

              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
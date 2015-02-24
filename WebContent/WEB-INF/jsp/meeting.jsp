<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
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
 
	<div id="topLeftBar"></div>
     
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
                 
              <div class="col-lg-9">
                  	
					<div id=addpay></div>
                  	<div class="row mt">
                  	<c:forEach items="${requestScope.list}" var="spend">
                 	<div class="col-md-4 mb">
								<div class="grey-panel pn">
							<div class="grey-header">
								<h5>${spend.memName}</h5>
							</div>
							<p><img src="assets/img/friends/fr-02.jpg" class="img-circle" width="80"></p>
							<p><h5>${spend.memName}</h5></p>
							<div class="row">
								<div class="col-md-6">
									<i class="small mt">MEMBER SINCE</i>
									<p>${spend.payCheck}</p>
								</div>
								<div class="col-md-6">
									<i class="small mt">PRICE</i>
									<p>￦ ${spend.price}</p>
								</div>
							</div>
						</div>
					</div><!-- /col-md-4 -->
					</c:forEach>
                  	</div><!-- /row-->	
                  	<div class="row mt">
                  	<div class="tab-pane" id="chartjs">
				 
                          <div class="grey-panel">
                           <div class="col-md-4">
							  <h4><i class="fa fa-angle-right"></i> 통계</h4>
                              <div class="panel-body text-center">
                                  <canvas id="pie" height="250" width="300"></canvas>
                              </div>
                              </div><!-- /col-md-12 -->
                              <div class="row">
                               <div class="col-md-6">
                               <c:forEach items="${requestScope.list}" var="spend" >
                              	<a class="logo pull-right"><b>총액 : ${spend.totalfee }</b></a><br><br><br>
                              	</c:forEach>
                              	</div>
                              	<div class="col">
                              	</div>
                              </div>
                          </div><!-- /content-panel -->
                      
				</div>
                     </div>
                  </div><!-- /col-lg-9 END SECTION MIDDLE -->
                 
                 <div id="rightSideBar"	></div>

          </section> <!-- wrapper end -->
      </section> <!-- main-content  end -->
      
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center"> 2015 - NBBANG <a href="login.do#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

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

  </body>
</html>

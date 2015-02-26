<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
  <link rel="shortcut icon" href="assets/img/favicon.ico">
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ChoiSeongJun">
    <meta name="keyword" content="alarm, credit, system, friends">

	<style type="text/css">
		.img_button {
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

              <div class="row">
                     
                  <div class="col-lg-12 main-chart">
                      
                <div class="col-lg-12">
					<div class="pull-right">
				           
						
							<div class="form-group">
						        <table>
						        <tr>
						        <td>
								<form action="insertMeeting.do" method="post">
								<h3><i class="fa" style="font-size: large;">모임 만들기</i>
 		                           <input type="image" width="50" height="50" src="assets/img/category/add2.png">
 		                           </h3>                                
                                </form> 
						       </td>
                                </tr>
                                </table>						
							</div>
						
					</div>
				</div>
                          <!-- <div class="col-lg-4 col-md-4 col-sm-4 mb">
							<div class="product-panel-2 pn">
								<img src="assets/img/product.jpg" width="200" alt="">
								<h5 class="mt">Flat Pack Heritage</h5>
								<h6>TOTAL SALES: 1388</h6>
								<button class="btn btn-small btn-theme04">FULL REPORT</button>
							</div>
						</div> -->
                  	<div class="row mtbox">
                  	    <c:forEach items="${sessionScope.list}" var="spend">
                  		
                  		<div class="col-lg-4 col-md-4 col-sm-4 mb">
                  			<div class="product-panel-2 pn">
					  			<c:choose>
										<c:when test="${spend.meetingType==1}">

										<form action="valuePass.do" method="POST" class="product-panel-2 pn" height="200"> 
										
												    <input type="image" src="assets/img/category/group.png"  width="150" height="150" class="img_button">
				                                    <input class="mt" type="hidden" name="manageno" value="${spend.manageNo}">
                  		                            <input class="btn btn-small btn-theme04" type="hidden" name="meetdate" value="${spend.meetDate}">
                  		                            <input type="hidden" name="meetno" value="${spend.meetNo}">
                  		                            
                  		                            <h4 class="mt"><i class="fa" style="font-size: large;">모임명 : ${spend.meetName}</i></h4>
					  			        <h5><i class="fa" style="font-size: large;">장소 : ${spend.place} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					  			        																날짜 : ${spend.meetDate }</i></h5>
					  			        																
					  			      <a class="btn btn-small btn-danger" href="deleteMeeting.do?meetno=${spend.meetNo}">delete</a>
										</form>
										
										</c:when>
									    <c:when test="${spend.meetingType==2}">
									    <form action="valuePass.do" method="POST">
											 <input type="image" src="assets/img/category/group.png" width="150" height="150" class="img_button">
				                                    <input type="hidden" name="manageno" value="${spend.manageNo}">
                  		                            <input type="hidden" name="meetdate" value="${spend.meetDate}">
                  		                            <input type="hidden" name="meetno" value="${spend.meetNo}">
                  		                            <h3>${spend.meetName} 그룹</h3>
                  		                          <a class="btn btn-small btn-danger" href="deleteMeeting.do?meetno= ${spend.meetNo}" >delete</a>  
										</form>
										
										</c:when>
									</c:choose>
									<!-- Product Panel -->
					  		
                  			</div>
                  		   
                  		    <div>
                  		    
                  		    </div>
                  		</div>
                  		
                       </c:forEach>		
               <div>
                  
              </div>                 			
                  	</div><!-- /row mt -->	
                  </div><!-- /col-lg-9 END SECTION MIDDLE -->
		     </div>
     	</section>
     </section>
  </section>

    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/jquery-1.8.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>

    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
	<script src="assets/js/zabuto_calendar.js"></script>	
    <!--script for this page-->
	 <script src="assets/js/chart-master/Chart.js"></script>
    <script src="assets/js/chartjs-conf.js"></script>	
	<script src="assets/js/meeting.js"></script>

	
        
    <script type="text/javascript">
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
  

  </body>
</html>

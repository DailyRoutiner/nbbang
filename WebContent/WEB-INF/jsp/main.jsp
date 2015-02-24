<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="euc-kr">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ChoiSeongJun">
    <meta name="keyword" content="alarm, credit, system, friends">

    <title>N-BBANG</title>
	<link rel="shortcut icon" href="favicon.ico">
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
    <link href="assets/css/icon.css" rel = "stylesheet">

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
                     
                  <div class="col-lg-9 main-chart">
                      
                <div class="col-lg-12">
					<div class="pull-right">
				           
						
							<div class="form-group">
						        <table>
						        <tr>
						        <td>
								<form action="insertMeeting.do" method="post">
				                    <button type="submit" class="btn btn-info" name="command" value="addFromSpendList">모임 추가</button>
                                </form> 
						       </td>
						 
                                </tr>
                                </table>						
							</div>
						
					</div>
				</div>
                          
                  	<div class="row mtbox">
                  	    <c:forEach items="${requestScope.list}" var="spend">
                  		
                  		<div class="col-md-2 col-sm-2  box0">
                  			<div class="box1">
					  			<c:choose>
										<c:when test="${spend.meetingType==1}">
										<form action="valuePass.do" method="post"> 
												    <input type="image" src="assets/img/category/ex_category_icon_01.png" width="150" height="150" class="img_button">
				                                    <input type="hidden" name="manageNo" value="${spend.manageNo}">
                  		                            <input type="hidden" name="meetDate" value="${spend.meetDate}">
                  		                            <input type="hidden" name="meetNo" value="${spend.meetNo}">
										</form>
										</c:when>
									    <c:when test="${spend.meetingType==2}">
									    <form action="valuePass.do" method="post">
											 <input type="image" src="assets/img/category/ex_category_icon_03.png" width="150" height="150" class="img_button">
				                                    <input type="hidden" name="manageNo" value="${spend.manageNo}">
                  		                            <input type="hidden" name="meetDate" value="${spend.meetDate}">
                  		                            <input type="hidden" name="meetNo" value="${spend.meetNo}">
										</form>
										</c:when>
									</c:choose>
									
					  			<h3>${spend.meetName} 모임</h3>
                  			</div>
                  		   
                  		    <div>
                  		    <form action="deleteMeeting.do" method="post">		
								<!-- search -->
								    <input type="image" width="10" height="10" src="assets/img/category/trash.png"  class="img_button">
                  		    <input type="checkbox" name="spendIndex" value="${spend.meetNo}">
                  		    </form>
                  		    </div>
                  						<p>장소 : ${spend.place}</p>
					  			        <p>날짜 : ${spend.meetDate}</p>	
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
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>
    <script src="assets/js/jquery.sparkline.js"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>
    
    <script type="text/javascript" src="assets/js/gritter/js/jquery.gritter.js"></script>
    <script type="text/javascript" src="assets/js/gritter-conf.js"></script>

    <!--script for this page-->
    <script src="assets/js/sparkline-chart.js"></script>    
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!--external css-->
    <link rel="stylesheet" type="text/css" href="assets/css/zabuto_calendar.css">
    
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
      <!-- **********************************************************************************************************************************************************
      RIGHT SIDEBAR CONTENT
      *********************************************************************************************************************************************************** -->                 
                 
                  <div class="col-lg-3 ds">
                  <div class="row">
                      <!-- USERS ONLINE SECTION -->
						<h3>받을 사람</h3>
                      <!-- First Member -->
                   		<!-- PROFILE 02 PANEL -->
							<div class="content-panel pn">
								<div id="profile-02">
									<div class="user">
										<img src="${sessionScope.dto.mempic }" class="img-circle" width="80">
										<h4>${sessionScope.dto.memname }</h4>
									</div>
								</div>
					<p>
					<ul class="nav top-menu">
						<input type="submit" style="height:40px; width:100%; color: white; font-size: medium; font-weight: 700; " class="btn btn-warning" value="회비 추가" data-toggle="modal" data-target="#myModal2" >
					</ul>
					<p>
					<ul class="nav top-menu">
                    	<form action="push_and_pay.html" method="post"><input type="submit" style="height:35px; width: 100% ; color: white; font-size: medium; font-weight: 700; " class="btn btn-warning" value="결제 하기" ></form>
					</ul>
							</div><!--/panel -->
					</div>
                    <!--COMPLETED ACTIONS DONUTS CHART-->
                    <div class="row mt">
                    <div class="content-panel pn">
						<h3>NOTIFICATION</h3>
						<div id="rightBar" class="desc">
                      </div>
                                     </div>  
                      
                      </div>
                      <!-- CALENDAR-->
                       <div class="row mt">
                        <div id="calendar" class="mb">
                            <div class="panel green-panel no-margin">
                                <div class="panel-body">
                                    <div id="date-popover" class="popover top" style="cursor: pointer; disadding: block; margin-left: 33%; margin-top: -50px; width: 175px;">
                                        <div class="arrow"></div>
                                        <h3 class="popover-title" style="disadding: none;"></h3>
                                        <div id="date-popover-content" class="popover-content"></div>
                                    </div>
                                    <div id="my-calendar"></div>
                                </div>
                            </div>
                        </div><!-- / calendar -->
						</div>
                  </div><!-- /col-lg-3 -->
                  
                  
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
										table += "<div class='thumb'><span class='badge bg-theme']><i class='fa fa-clock-o'></i></span></div>"+
										"<div class='details'><p><muted>"+item.alramtime+"</muted><br/>"
												+"<a href='#'>"+item.memname+"</a>"
												+"<span class='message'>"+item.content+"<br/></p></div>";
									});
							$("#rightBar").html(table);
						} ,
						error : function(err) {//실패했을때
							alert(err + " : 메세지 보기 실패");
						}
					});
    		
    });
    </script>
    
    <script src="assets/js/zabuto_calendar.js"></script>	
	
	<script type="application/javascript">
        $(document).ready(function () {
            $("#date-popover").popover({html: true, trigger: "manual"});
            $("#date-popover").hide();
            $("#date-popover").click(function (e) {
                $(this).hide();
            });
        
            $("#my-calendar").zabuto_calendar({
                action: function () {
                    return myDateFunction(this.id, false);
                },
                action_nav: function () {
                    return myNavFunction(this.id);
                },
                ajax: {
                    url: "show_data.php?action=1",
                    modal: true
                },
                legend: [
                    {type: "text", label: "Special event", badge: "00"},
                    {type: "block", label: "Regular event", }
                ]
            });
        });
        
        
        function myNavFunction(id) {
            $("#date-popover").hide();
            var nav = $("#" + id).data("navigation");
            var to = $("#" + id).data("to");
            console.log('nav ' + nav + ' to: ' + to.month + '/' + to.year);
        }
    </script>
    <script src="assets/js/jquery.js"></script>
	<script src="assets/js/jquery-1.8.3.min.js"></script>    
    

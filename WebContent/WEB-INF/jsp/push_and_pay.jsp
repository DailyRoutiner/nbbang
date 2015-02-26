<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>N-BBANG</title>
	<!-- push -->
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="push/examples/resources/css/baas.io.css">

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
	<script src="push/baas.io.js"></script>
	<script src="push/examples/push/app.js"></script>
	
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

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

  </head>

  <body>

  <section id="container" >
  
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
     <div id="topLeftBar"></div>
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
      
          <section class="wrapper">
          	<h1><i class="fa fa-angle-right"></i> 간편 결제</h1>
          	
          	<!-- BASIC FORM ELELEMNTS -->
          	<div class="row mt">
          		<div class="col-lg-12">
                  <div class="form-panel">
                  	  <h2 class="mb"><i class="fa fa-angle-right"></i> 결제 정보를 입력해 주세요</h2>
                     <form id="pay" class="form-horizontal style-form" method="post">
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label"><h3><strong>모임 이름</strong></h3></label>
                              <div class="col-sm-10">
                                  <input id="meetname" name="meetname" type="text" class="form-control">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label"><h3><strong>은행</strong></h3></label>
                              <div class="col-sm-10">
                                  <input name="bank" type="text" class="form-control">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label"><h3><strong>금액</strong></h3></label>
                              <div class="col-sm-10">
                                  <input id="price" name="price" type="text" class="form-control">
                              </div>
                          </div>
                          <div class="form-group">
                              <label class="col-sm-2 col-sm-2 control-label"><h3><strong>계좌 비밀번호</strong></h3></label>
                              <div class="col-sm-10">
                                  <input id="carPw" name="carPw" type="password" class="form-control round-form">
                              </div>
                          </div>
                         <input type="submit" class="btn btn-theme" id="payButton" value="결제하기">
                      </form>
                  </div>
          		</div><!-- col-lg-12-->      	
          	</div><!-- /row -->
          	
          	<!-- INPUT MESSAGES -->
          	<div class="row mt">
          		<div class="col-lg-12">
          			<div class="form-panel">
					<input type="hidden" class="form-control __org_id" value="447fa554-aaeb-11e4-8f63-06fd000000c2" placeholder="baas.io ID or Name">
				<!-- insert Application "id" or "username" -->
				<input type="hidden" class="form-control __app_id" value="4b789e97-aaeb-11e4-8f63-06fd000000c2" placeholder="Application ID or Name">
		

			<div class="tab-content">
				<div class="tab-pane active" id="Send">
					
					<h3><strong>메세지 보내기</strong></h3>

					<form action="pushWebInsert.do" id="push"  method="post" role="form" id="webSendTable" class='__setting' style="margin-bottom:20px;">
						
						<!-- select target -->
						<!-- target:user -> insert uuid -->
						<!-- target:device -> insert device id -->
						<!-- target:tag -> insert tag name -->
							
							<label style="margin:0 10px 0 0;">
								<input class='radio-inline' type="radio" name="target" value="device" style="margin:-2px 5px;">device
							</label>
						<label style="margin:0 10px 0 0;">
								<input type="text" id="deviceName" value="">
								<input type="button" class="btn btn-theme" id="selectName" value="이름 검색">
							</label>
						<div class="form-group">
							<!-- 'user id' or 'device id' or 'tag name' -->
							<input type="text" id="uuid" name="uuid" class="form-control __target_id" placeholder="disabled">
						</div>

						<div class="form-group">
							<!-- push send message -->
							<label><h3><strong>message</strong></h3></label>
							<textarea id="content" name="content" class="form-control __message" rows="3" placeholder="메세지 내용은 iOS 220Byte, Android 4000Byte 로 제한되어 발송됩니다."></textarea>
						</div>

					
						<div class="form-group">	
							<!-- push reserve -->
							<label><h3><strong>reserve</strong></h3></label>
							<input id="alramtime" name="alramtime" type="text" class="form-control __reserve" placeholder="YYYY/MM/DD HH:MI (EX : 2014/09/15 13:40)">
						</div>

						<!-- select platform -->
						<label><h3><strong>platform</strong></h3></label>

						<div class="form-group">
							<label style="margin:0 10px 0 0;">
								<input class='radio-inline' type="radio" name="platform" value="I" style="margin:-2px 5px;" checked>iOS
							</label>
							<label style="margin:0 10px 0 0;">
								<input class='radio-inline' type="radio" name="platform" value="G" style="margin:-2px 5px;">Android
							</label>
						</div>

						<!-- send button -->
						<button id="resetDeviceId" type="reset" class="btn btn-theme dd"> 다시 쓰기 </button>
						<button class="btn btn-theme __send"> 보내기 </button>
						<input type="button" class="btn btn-theme" value="웹전송" id="sendMessage" >
					</form>

				</div>
			</div>
          			</div><!-- /form-panel -->
          		</div><!-- /col-lg-12 -->
          	</div><!-- /row -->
          	
		</section><!--/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
            2015 - N-BBANG
              <a href="push_and_pay.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
	<script src="assets/js/meeting.js"></script>

    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="assets/js/form-component.js"></script>    
	<script src="assets/loginjs/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
    
    $(document)	.ready(function() {
    	var table = "";
    	var count = 0;
    	$("#selectName").click(function() {
    		$.ajax({
				url : "selectDevice.do",
				type : "post",
				dataType : "text", //결과데이터타입
				data : "vo=" + $("#deviceName").val(),
				success : function(data) {
							table += data+",";
							count=count+1;
					$("#uuid").val(table);
					alert(count+"명 선택되었습니다.");
				},
				error : function(err) {//실패했을때
					alert(err + " : 검색 실패");
				}
			}); 
		})
    	$("#resetDeviceId").click(function() {
    		table="";
    		count=0;
    	})
		
    	$("#sendMessage").click(function() {
				$.ajax({
					url : "pushWebInsert.do",
					type : "post",
					dataType : "text",
					data : $("#push").serialize(),
					success : function(data) {
						if (data == "ok") {
							alert("전송 성공");
						} else {
							alert("전송 실패");
						}
					},
					error : function(data) {
						alert(data + ' : 전송 실행시 에러 발생');
					}
				}); 
			})
		 	// 결제 하기 
			$("#payButton").click(function() {
				$.ajax({
					url : "pay.do",
					type : "post",
					dataType : "text",
					data : $("#pay").serialize(),
					success : function(data) {
					},
					error : function(data) {
					}
				}); 
			})
    });
    
    </script>
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>

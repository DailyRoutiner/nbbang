<%@page import = "model.domain.MemberDTO" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="author" content="">
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
        
<title>NBBANG</title>
<script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script src="js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
        <!-- CSS -->
        <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
        <link rel="stylesheet" href="assets/logincss/reset.css">
        <link rel="stylesheet" href="assets/logincss/supersized.css">
        <link rel="stylesheet" href="assets/logincss/style.css">
        <link href="assets/logincss/bootstrap.css" rel="stylesheet">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        
          	<script type="text/javascript">
          	
    $(window).load(function(){

    $('.flexslider').flexslider({
        animation: "slide",
        slideshow: true,
        start: function(slider){
    $('body').removeClass('loading');
        }
    });  
});
    </script>
</head>		
				
				
<body>
<center>
        <div class="section">
	    	<div class="container">
				<div class="row">
					<center>
					<div class="col-sm-8">
						<div class="blog-post blog-single-post">
							<div class="single-post-title">
								<h3>My Page</h3>
								<br>
								
							</div>
							<div class="single-post-info">
							<!-- view Form  -->
					 <form action="MemberServlet" method="post">
					 	<!-- 개인 정보 수정하는 update.jsp에서 활용될 데이타를 hidden tag로 설정 -->
					  
					  <table border="1" cellspacing="1" width="60%">
						  <tr>
							<td width=30%>사용자 아이디</td>
							<td width=70%>
							 ${sessionScope.dto.email}
							</td>
						  </tr>
				
						  <tr>
							<td width="30%">이름</td>
							<td width="70%">
							  ${sessionScope.dto.memname}
							</td>
						  </tr>
						  <tr>
						  	<td width="30%">전화번호</td>
						  	<td width="70%">
							  ${sessionScope.dto.phonenumber}
							</td>
						  </tr>		  
					  </table>	
					  <br><br>	  
			
						<input type="button" value="정보 수정"	Onclick="location.href='updateUsers.jsp'">&nbsp;
						<input type="button" value="완료"  name="email" Onclick="location.href='loginpage.html'">
							<input type="hidden" name="command" value="login">
							<script>alert('가입되었습니다');
											location.href="loginpage.html";</script>
					 </form>
							</div>
						</div>
					</div>
					</center>
					<!-- End Blog Post -->
				</div>
			</div>
	    </div>
	    </center>
	    
	     
            <div class="connect">
                <p>Or connect with:</p>
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
            </div>
       
	    
	   
<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>
	window.jQuery
	|| document
			.write('<script src="js/jquery-1.9.1.min.js"><\/script>')
</script>
   <script type="text/javascript" src="assets/loginjs/bootstrap.js"></script>
   
        <!-- Javascript -->
        <script type="text/javascript" src="assets/loginjs/bootstrap.js"></script>
        <script src="assets/loginjs/jquery-1.8.2.min.js"></script>
        <script src="assets/loginjs/supersized.3.2.7.min.js"></script>
        <script src="assets/loginjs/supersized-init.js"></script>
        <script src="assets/loginjs/scripts.js"></script>
       	<script type="text/javascript" src="js/noty/themes/default.js"></script>
 
	<script src="js/jquery.flexslider.js" type="text/javascript"></script>
	 <script type="text/javascript" src="js/admin.js"></script>


</body>
</html>
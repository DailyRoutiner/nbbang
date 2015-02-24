
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

<meta http-equiv="Content-type" content="text/html" charset="EUC-KR">
<link rel="shortcut icon" href="/assets/logo.jpg">
<title>N-BBANG</title>


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

	<!-- Header -->
	<header id="header">
		<nav id="nav">
			<ul>
				<li><a href="loginpage.html" class="btnnew">Home</a></li>
				<li>
					<!-- MODAL BLOCK -->
					<div class="half-unit">
						<div class="cont">
							<a href="#myModal" class="button special" data-toggle="modal">Sign Up</a>
						</div>
					</div>

				</li>
			</ul>
		</nav>
	</header>


	<div class="page-container">
		<h1>Login</h1>
		<form action="login.do" method="post">
			<input type="hidden" value="login" name="command">
			 <input type="text" name="email" class="username" placeholder="Username">
			<input type="password" name="mempw" class="password" placeholder="Password">
			<Button type="submit" class="btn">Login</button>
			<div class="error">
				<span>+</span>
			</div>
		</form>

	<div id="fb-root"></div>
		<div id="status"></div>
		<div class="connect">
			<p>Or connect with:</p>
			<p>
				<a class="facebook" href="insertfacebook.do" ></a> 
				<a class="kakaotalk" href="insertcaocao.do"></a>
			</p>
		</div>
	</div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">Join in</h4>
				</div>
				<div class="modal-body">
					<div id="register-wraper">
						<form id="register-form" class="form" action="insertMember.do"	method="post">
							<input type="hidden" name="command" value="insertMember">

							<legend>User Register</legend>

							<div class="body">
								<label for="email">Email</label> 
								<input name="email" class="input-huge" type="text"> 
								<label for="memname">Name</label>
								<input name="memname" class="input-huge" type="text"> 
								<label for="mempw">Password</label>
								 <input name="mempw" class="input-huge" type="password"> 
								 <label for="phonenumber">Phone Number</label> 
								 <input name="phonenumber" class="input-huge" type="text">
								<button type="submit" class="btn btn-right">Register</button>

							</div>
						</form>
					</div>
					<div class="modal-footer"></div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
		<!-- /.modal -->


		<!-- Javascript -->
		<script type="text/javascript" src="assets/loginjs/bootstrap.js"></script>
		<script type="text/javascript" src="assets/js/facebook.js"></script>
		<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
		<script src="assets/loginjs/jquery-1.8.2.min.js"></script>
		<script src="assets/loginjs/supersized.3.2.7.min.js"></script>
		<script src="assets/loginjs/supersized-init.js"></script>
		<script src="assets/loginjs/scripts.js"></script>
		
</body>

</html>


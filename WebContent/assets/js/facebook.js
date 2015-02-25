$(document).ready(function(){
	  // 사용할 앱의 Javascript 키를 설정해 주세요.
	  Kakao.init('f18a77886192705601a312e6bfbbfa14');
	  
	$(".facebook").click(function(){
	  //클릭 했을 때 
	    FB.getLoginStatus(function(response) {
	      statusChangeCallback(response);
	    });
});
	 $(".kakaotalk").click(function(){
		  Kakao.Auth.login({
			    success: function(authObj) {
			      // 로그인 성공시, API를 호출합니다.
			      Kakao.API.request({
			        url: '/v1/user/me',
			        success: function(res) {
			        	window.document.location.href = "insertkakaotalk.do?data=" +JSON.stringify(res);
			        },
			        fail: function(error) {
			          alert(JSON.stringify(error));
			        }
			      });
			    },
			    fail: function(err) {
			      alert(JSON.stringify(err));
			    }
			  });
	  });

	// This is called with the results from from FB.getLoginStatus().
  function statusChangeCallback(response) {
    console.log('statusChangeCallback');
    console.log(response);
    // The response object is returned with a status field that lets the
    // app know the current login status of the person.
    // Full docs on the response object can be found in the documentation
    // for FB.getLoginStatus().
    if (response.status === 'connected') {
      // Logged into your app and Facebook.
      testAPI();
    } else if (response.status === 'not_authorized') {
      // The person is logged into Facebook, but not your app.
      FB.login(function(response) {
      }, {scope: 'email'});
    } else {
    	FB.login(function(response) {
        }, {scope: 'email'});
      // The person is not logged into Facebook, so we're not sure if
      // they are logged into this app or not.

    }
  }
  // 페북 초기
  window.fbAsyncInit = function() {
  FB.init({
    appId      : '1549900925290102',
    cookie     : true,  // enable cookies to allow the server to access
                        // the session
    xfbml      : true,  // parse social plugins on this page
    version    : 'v2.2' // use version 2.1
  });
};

  // Load the SDK asynchronously
(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ko_KR/sdk.js#xfbml=1&appId=1549900925290102&version=v2.2";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));
  
  // Here we run a very simple test of the Graph API after login is
  // successful. See statusChangeCallback() for when this call is made.
  function testAPI() {
    console.log('Welcome!  Fetching your information.... ');
    FB.api('/me', function(response) {
    	console.log(response);
    	window.document.location.href = "insertfacebook.do?data=" +JSON.stringify(response);
    });
  };
});
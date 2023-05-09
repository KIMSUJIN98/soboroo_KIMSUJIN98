<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>soboroo | 로그인</title>
<link rel="stylesheet" href="resources/css/loginStyle.css">
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrap">
	    <div class="popup_area">
	        <div id="login_box">
	            <span id="title">소소하지만 보람찬 당신의 하루</span>
	            <span id="titleLogo"><img src="resources/images/logo_1.png" alt=""></span>
			</div>
	       <div id="login_input">
               <button type="submit" class="login_btn" onclick="loginWithKakao();">카카오로 시작하기</a></button>
	       </div>
     	       
     	   <div id="login_input">
               <button type="submit" class="login_btn">관리자 로그인</button>
	       </div>
	    </div>
	</div>

	<!-- 카카오 로그인 -->              
	<script type="text/javascript" src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
	<script type="text/javascript">
		//초기화 시키기. 
		$(document).ready(function(){	
			Kakao.init('22931d135d75b509838f23be2834c5c7');
			Kakao.isInitialized();
		});
	</script>

	<script type="text/javascript">
		function loginWithKakao() {
		Kakao.Auth.authorize({
			redirectUri: 'http://localhost:3500/soboroo/loginpage_kakao_callback'
			});
	  	}
	</script>

	<script type="text/javascript">
		var kakao_message = new Object();   
		$(document).ready(function(){	
			var ACCESS_TOKEN= $("#access_token").val();
			//할당받은 토근을  세팅
			Kakao.Auth.setAccessToken(ACCESS_TOKEN);
			console.log(Kakao.Auth.getAccessToken());		
			Kakao.API.request({
				url: '/v2/soboroo/me',
				success: function(response) {
					console.log(response);
					kakao_message['id']=response['id'];
					kakao_message['email']=response['kakao_account']['email'];
					kakao_message['nickname']=response['kakao_account']['profile']['nickname'];
					console.log(kakao_message);
					var m_uid = 'KAKAO_'+kakao_message['id'];
					console.log(""+window.location.hostname+"");
					var data = JSON.stringify({
						uid : m_uid
					 , uname : kakao_message['nickname']
					 , uemail : kakao_message['email']
					 , join_pass : 'KAKAO'
					});
					// 로그인시 서버에서 넘어왔음.. 
					//로그인정보가 있다면 로그인 시도하기.. 
					var url = '/user/userid_duplicate_check';
					getPostData(url,data,callback_userid_duplicate_check, false);	
					
					if(!is_userid) //sns가입된 id가 있다면 로그인 시도.
					{
						url = '/user/naver_kakao_sns_login';					
						getPostData(url,data,callback_join_ok, false);
					}
					else if(is_userid) //sns로 가입된 id가 없다면 가입시도..
					{
						$("#i_id").val(m_uid);
						$("#i_name").val(kakao_message['nickname']);
						$("#i_email").val(kakao_message['email']);
					}
				},
				fail: function(error) {
					console.log(error);
					console.log("error");
				}
			});
		});
		
	</script>
	
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>
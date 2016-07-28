<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>忘记密码</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="/resources/css/templatemo_style.css" rel="stylesheet" type="text/css">
	
	<link  rel="stylesheet" href="/resources/css/style.css"/>
	<script type="text/javascript" src="/resources/scripts/jquery-2.1.0.min.js"></script>
	<script type="text/javascript" src="/resources/scripts/myform.js"></script>
	<style>
	.btn-danger:hover,.btn-danger:focus {
	    background-color: #c12e2a;
	    background-position: 0;
	}
</style>
</head>
<body class="templatemo-bg-gray">
<div class="container" >
		<div class="col-md-12">
			<h1 class="margin-bottom-15">重置密码</h1>
			<form id="chk-form" class="form-horizontal templatemo-forgot-password-form templatemo-container" action="forgot-password.html" method="post" onsubmit="return checkEmail()">	
				<div class="form-group" >
		          <div class="col-md-12">
		          	请输入您的电子邮件地址,您在我们的网站注册。
		          </div>
		        </div>		
		        <div class="form-group">
		          <div class="col-md-12">
		            <input type="text" class="form-control" id="mail" placeholder="Your email" name="email" easyform="email;real-time;ajax-mail;" message="Email格式要正确" ajax-message="这个email不存在，请换一个吧!">	            
		          </div>              
		        </div>
		        <div class="form-group">
		          <div class="col-md-12">
		            <input type="submit" value="提交" class="btn btn-danger nocolor">
                    <br><br>
		          </div>
		        </div>
		      </form>
		</div>
	</div>
	<script type="text/javascript">
		$(document).ready(function(){
			$('#chk-form').easyform();
		});
		
		function checkEmail(){
			alert();
			return false;
		}
	</script>
</body>
</html>
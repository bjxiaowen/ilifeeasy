<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
<link  rel="stylesheet" href="/resources/css/style.css"/>
<script type="text/javascript" src="/resources/scripts/jquery-2.1.0.min.js"></script>
<script type="text/javascript" src="/resources/scripts/easyform.js"></script>
<script type="text/javascript">
</script>
<style type="text/css">
    .sex{
        padding: 10px 5px;
    }
    .title{
        font-weight: 300;
        font-size: 36px;
        line-height: normal;
        margin: auto;
        margin-top: 0px;
        text-align: center;
        color: rgb(74, 164, 180);
    }    
</style>

</head>
<body>
<br/>
<div class="form-div">
    <h1 class="title">注册</h1>
    <form id="reg-form"  method="post" action="user/createAccount.html">
        <table>
            <tr>
                <td>用户名</td>
                <td><input name="username" type="text" id="uid" easyform="length:4-16;char-normal;real-time;ajax-name;" message="用户名必须为4—16位的英文字母或数字" easytip="disappear:lost-focus;theme:blue;" ajax-message="用户名已存在!"/>
                </td>
            </tr>
            <tr>
                <td>密码</td>
                <td><input name="password" type="password" id="psw1" easyform="length:6-16;" message="密码必须为6—16位" easytip="disappear:lost-focus;theme:blue;"/></td>
            </tr>
            <tr>
                <td>确认密码</td>
                <td><input name="psw2" type="password" id="psw2" easyform="length:6-16;equal:#psw1;" message="两次密码输入要一致" easytip="disappear:lost-focus;theme:blue;"/></td>
            </tr>
            <tr>
                <td>email</td>
                <td><input name="email" type="text" id="email" easyform="email;real-time;" message="Email格式要正确" easytip="disappear:lost-focus;theme:blue;" ajax-message="这个Email地址已经被注册过，请换一个吧!"/></td>
            </tr>
            <tr>
                <td>电话</td>
                <td><input name="tel" type="text" id="tel" easyform="tel;length:11-11;" message="请输入11位正确的电话号码" easytip="disappear:lost-focus;theme:blue;" ajax-message="这个tel已经注册过，请换一个吧!"/></td>
            </tr>
             <tr>
                <td class="sex">性别</td>
                <td align="left" >&nbsp;&nbsp;&nbsp;<input name="sex" type="radio" checked="checked" value="男"/>&nbsp;男&nbsp;&nbsp;&nbsp;<input name="sex" type="radio" value="女"/>&nbsp;女</td>
            </tr> 
            <tr>
                <td>年龄</td>
                <td><input type="text" name="age" easyform="number;length:1-3;"  message="请输入1-3位整数" easytip="disappear:lost-focus;theme:blue;"/></td>
            </tr>          
        </table>

		<div class="buttons">
			<input value="注 册" type="submit" style="margin-right:20px; margin-top:20px;"/>
			<input id="btn1" value="我有账号，我要登录" type="button" style="margin-right:45px; margin-top:20px;" />
        </div>		
        <br class="clear"/>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function(){
	$('#reg-form').easyform();
	$("#btn1").click(function(){
	    location.href='login.html';
    });
});
</script>
</body>
</html>

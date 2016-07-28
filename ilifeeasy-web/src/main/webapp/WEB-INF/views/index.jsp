<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Ilifeeasy</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="/resources/styles/layout.css"type="text/css">
<script src="/resources/scripts/jquery-2.1.0.min.js"></script>
</head>
<body>
	<div class="wrapper row1">
		<header id="header" class="clear">
			<hgroup>
				<h1>
					<a href="#">My<span> life easy</span></a>
				</h1>
				<h2>开心每一天，让生活变得更美好！！</h2>
			</hgroup>
		<form method="post">
			<fieldset>
				<legend>Search:</legend>
				<input type="text" value="搜索我们想要的课程" onFocus="this.value=(this.value=='搜索我们想要的课程')? '' : this.value ;">
				<input type="image" src="/resources/images/search.gif" id="search" alt="Search">
			</fieldset>
		</form>
		<nav>
		<ul class="clear">
			<li class="first active"><a
				href="<%=basePath%>ilifeeasy/index.html">首页</a></li>
			<li><a href="style-demo.html">课程</a></li>
			<li><a href="full-width.html">合作</a></li>
			<li><a href="#">常见问题</a>
				<ul>
					<li><a href="#">Link 1</a></li>
					<li><a href="#">Link 2</a></li>
					<li><a href="#">Link 3</a></li>
				</ul>
			</li>
			<li><a href="gallery.html">关于我们</a></li>
			<li style="text-transform: none">
				<a href="<%=basePath%>ilifeeasy/login.html">登录</a>
				<ul>
					<li><a href="<%=basePath%>ilifeeasy/regist.html">注册</a></li>
				</ul>
			</li>
		</ul>
		</nav>
	 </header>
	</div>
	<div class="wrapper row2">
		<!-- Slider -->
		<section id="slider">
		<div id="controls">
			<!-- Controls -->
			<a href="#" class="prev"><img
				src="/resources/images/slider/controls/arrow-prev.png"
				alt="Previous"></a> <a href="#" class="next"><img
				src="/resources/images/slider/controls/arrow-next.png" alt="Next"></a>
			<!-- / Controls -->
			<div class="slidescontainer">
				<figure>
				<a href="#"><img src="/resources/images/1.jpg" width="960"
					height="380" alt=""></a></figure>
				<figure>
				<a href="#"><img src="/resources/images/2.jpg" width="960"
					height="380" alt=""></a></figure>
				<figure>
				<a href="#"><img src="/resources/images/3.jpg" width="960"
					height="380" alt=""></a></figure>
				<!-- / Slide Container -->
			</div>
			<!-- / Controls -->
		</div>
		</section>
	</div>
	<!-- content -->
	<div class="wrapper row3">
		<div id="container" class="clear">
			<div id="homepage">
				<!-- Services -->
				<section id="services">
				<ul class="clear">
					<li class="one_quarter first"><img
						src="/resources/images/1.gif" width="32" height="32" alt="">
						<article>
						<h2>
							<a href="#">热 门 考 试</a>
						</h2>
						<p>二级建造师</p>
						<p>一级建造师</p>
						<p>会计从业资格</p>
						<p>公务员</p>
						</article></li>
					<li class="one_quarter"><img src="/resources/images/2.gif"
						width="32" height="32" alt=""> <article>
						<h2>
							<a href="#">最近考试</a>
						</h2>
						<p>自考</p>
						<p>工程经济学</p>
						<p>项目管理</p>
						<p>时间管理</p>

						</article></li>
					<li class="one_quarter"><img src="/resources/images/3.gif"
						width="32" height="32" alt=""> <article>
						<h2>
							<a href="#">精品推荐</a>
						</h2>
						<p>
							<a href="#">项目管理</a>
						</p>
						<p>
							<a href="#">司法考试</a>
						</p>
						<p>
							<a href="#">公务员考试</a>
						</p>
						<p>
							<a href="#">建造师</a>
						</p>
						</article></li>
					<li class="one_quarter"><img src="/resources/images/4.gif"
						width="32" height="32" alt=""> <article>
						<h2>
							<a href="#">联系我们</a>
						</h2>
						<p>&nbsp;电&nbsp;&nbsp;话：13520029132</p>
						<p>&nbsp;QQ:769274076</p>
						<p></p>
						<p></p>
						</article></li>
				</ul>
				</section>
				<!-- / Services -->
				<section id="shout">
				<p>
					<strong>&ldquo;青春啊，永远是美好的，可是真正的青春，只属于这些永远力争上游的人，永远忘我劳动的人，永远谦虚的人！——雷锋&bdquo;</strong>
				</p>
				</section>
				<section id="latest">
				<ul class="clear">
					<li class="one_quarter first">
						<h1>朋友，坚定地相信未来吧</h1>
						<p>用我们的奋斗和梦想扬起青春的船帆，当我们努力拼搏地摇浆时，成功的闸门也会慢慢地再为我们打开，我们将享受一份青春的美好，收获一份成功的喜悦。</p>
					</li>
					<li class="one_quarter"><article> <figure>
						<img src="/resources/images/4.jpg" width="200" height="130" alt="">
						<figcaption>
						<h2>一级建造师</h2>
						<p>建造师（Constructor）是指从事建设工程项目总承包和施工管理关键岗位的执业注册人员。</p>
						<footer>
						<a href="#">更&nbsp;&nbsp;多 &raquo;</a></footer> </figcaption> </figure> </article></li>
					<li class="one_quarter"><article> <figure>
						<img src="/resources/images/5.jpg" width="200" height="130" alt="">
						<figcaption>
						<h2>动物世纪</h2>
						<p>建造师（Constructor）是指从事建设工程项目总承包和施工管理关键岗位的执业注册人员。</p>
						<footer>
						<a href="#">更&nbsp;&nbsp;多 &raquo;</a></footer> </figcaption> </figure> </article></li>
					<li class="one_quarter"><article> <figure>
						<img src="/resources/images/6.jpg" width="200" height="130" alt="">
						<figcaption>
						<h2>注册会计师</h2>
						<p>建造师（Constructor）是指从事建设工程项目总承包和施工管理关键岗位的执业注册人员。</p>
						<footer>
						<a href="#">更&nbsp;&nbsp;多 &raquo;</a></footer> </figcaption> </figure> </article></li>
				</ul>
				</section>
			</div>
		</div>
	</div>
	<!-- Footer -->
	<!-- Copyright -->
	<div class="wrapper row5">
		<footer id="copyright" class="clear">
		<p class="fl_left">
			Copyright &copy; 2012 - All Rights Reserved - <a href="#">Domain
				Name</a>
		</p>
		<p class="fl_right">
			美好的开始 <a target="_blank" href="#" title="联系我们">联系我们</a>
		</p>
		</footer>
	</div>
<!-- 	<script>
$(document).ready(function () {
    $("#nl_name, #nl_email").defaultvalue("Name", "Email Address");
}); 
</script>-->
</body>
</html>
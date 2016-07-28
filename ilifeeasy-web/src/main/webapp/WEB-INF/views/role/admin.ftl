<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Iovov</title>
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <!-- font Awesome -->
        <link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- Ionicons -->
        <link href="/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        <!-- Theme style -->
        <link href="/resources/css/admin.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   		<!--<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   		<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>-->
    </head>
    <body class="skin-blue">
        <#include "header.ftl">
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
			 <#include "left-side.ftl">
            <!-- Right side column. Contains the navbar and content of the page -->
            <#include "tables.ftl">
            <!-- /.right-side -->
        </div><!-- ./wrapper -->
        <!-- jQuery 2.0.2 -->
        <script src="http://libs.baidu.com/jquery/1.9.1/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="/resources/js/plugins/bootstrap.min.js" type="text/javascript"></script>
        <!-- AdminLTE App -->
        <script src="/resources/js/plugins/app.js" type="text/javascript"></script>

    </body>
</html>
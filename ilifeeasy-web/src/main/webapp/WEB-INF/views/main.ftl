<!DOCTYPE html>
<html>
    <head>
        <title>Iovov</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <!-- bootstrap 3.0.2 -->
        <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/_all-skins.min.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/blue.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/morris.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/datepicker3.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
    	<link href="/resources/css/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
    </head>
    <body class="hold-transition   skin-blue sidebar-mini">
    <div class="wrapper">
        <#include "header.ftl">
			 <#include "left-side.ftl">
             <#include "home.ftl">
             <#include "footer.ftl">
			 <#include "seting_sidebar.ftl">
            <div class="control-sidebar-bg"></div>
    </div>
        
        <!-- jQuery 2.1.4 -->
    	<script src="/resources/js/jQuery-2.1.4.min.js"></script>
    	<script src="/resources/js/jquery-ui.min.js"></script>
	    <script src="/resources/js/morris.min.js"></script>
	      <!-- Bootstrap 3.3.5 -->
    	<script src="/resources/js/bootstrap.min.js"></script>
	    <script src="/resources/js/jquery.sparkline.min.js"></script>
	    <script src="/resources/js/jquery-jvectormap-1.2.2.min.js"></script>
	    <script src="/resources/js/jquery-jvectormap-world-mill-en.js"></script>
	    <script src="/resources/js/jquery.knob.js"></script>
	    <script src="/resources/js/daterangepicker.js"></script>
	    <script src="/resources/js/bootstrap-datepicker.js"></script>
	    <script src="/resources/js/bootstrap3-wysihtml5.all.min.js"></script>
	    <script src="/resources/js/jquery.slimscroll.min.js"></script>
	    <script src="/resources/js/fastclick.min.js"></script>
	    <script src="/resources/js/app.min.js"></script>
	    <script src="/resources/js/demo.js"></script>
	    
		 <!-- datatables -->
		<script src="/resources/js/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="/resources/js/plugins/datatables/dataTables.bootstrap.min.js"></script>
    
    	<script>
			$(function () {
				function initTable(){
					$('#manage-table').DataTable({
			          "paging": true,
			          "lengthChange": false,
			          "zeroRecords":    "No matching records found   1111",
			          "pageLength": 8,
			          "searching": true,
			          "ordering": false,
			          "info": false,
			          "autoWidth": false,
			          "language": {
			          		"search":"搜索",
			          		"infoEmpty":"没有记录",
					        "emptyTable":"表中数据为空",
					        "loadingRecords":"加载中......",
					         "zeroRecords":    "没有找到匹配的记录",
			          		"paginate":{
			          		 		"first":    	"第一页",
									"previous": 	"上一页",
									"next":     	"下一页",
									"last":     	"最后页"
			          		 }
			          }
			        });
				}
				
				$(".treeview-menu li a").click(function () {
					var url = $(this).attr("rid");
					console.log(url);
					console.log(url.indexOf('#'));
					if (url.indexOf('#')<0) {
						console.log('成功');
						console.log(url);
						var page=$('.content-wrapper');
						page.html('');
						$.get(url,function(result){
						    page.html(result);
						    initTable();
						});
					}else{
						console.log('失败');	
						return;
					}
				});
			});
		</script>
    </body>
</html>
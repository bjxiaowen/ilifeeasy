<!DOCTYPE html>
<html>
    <head>
        <title>资源管理</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
        <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/ionicons.min.css" rel="stylesheet" type="text/css" />
        
        <!-- Theme style -->
        <link href="/resources/css/admin.css" rel="stylesheet" type="text/css" />
        <link href="/resources/css/AdminLTE.css" rel="stylesheet" type="text/css" />
        <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
        <!-- DataTables -->
    	<link rel="stylesheet" href="/resources/css/plugins/datatables/dataTables.bootstrap.css">
    	
    </head>
    <body class="hold-transition skin-blue sidebar-collapse sidebar-mini ">
        <#include "../../header.ftl">
        <div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
			 <#include "../../left-side.ftl">
            <!-- Right side column. Contains the navbar and content of the page -->
					<div class="right-side" style="border:0">
						<div class="box box-solid bg-light-blue-gradient">
							<div class="box-header">
								<i class="fa fa-magnet"></i>
								<h3 class="box-title">资源管理</h3>
								<div class="pull-right box-tools">
						            <!-- button with a dropdown -->
						          	<button class="btn btn-success btn-sm" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span>添加</button>
   									<button class="btn btn-success btn-sm" id="remove"><span class="glyphicon glyphicon-remove">删除</span></button>
						            <button class="btn btn-success" data-widget="collapse"><i class="fa fa-minus"></i></button>
						            <button class="btn btn-success" data-widget="remove"><i class="fa fa-times"></i></button>
						        </div>
							</div>
							<div class="box-body no-padding">
						      <!--The calendar -->
						      <div id="calendar" style="width: 100%"></div>
						    </div><!-- /.box-body -->
						    <div class="box-footer text-black">
						      <div class="row">
						        <div class="col-sm-12">
						             <div class="box">
					                    <div class="box-body">
					                        <table class="table table-bordered" id="managetable">
					                            <thead>
						                            <tr>
						                                <th style="width: 100px">名称</th>
						                                <th style="width: 60px">编码</th>
						                                <th style="width: 80px">上级菜单</th>
						                                <th style="width: 30px">排序</th>
						                                <th style="width: 60px">菜单图标</th>
						                                <th style="width: 40px">层级</th>
						                                <th style="width: 30px">下级</th>
						                                <th style="width: 60px">创建人</th>
						                                <th>创建时间</th>
						                            </tr>
					                            </thead>
					                            <tbody>
					                            	<#if datalist ?? && (datalist)?size &gt; 0>
					                            		<#list datalist as item>
					                            			<tr>
					                            				<td><a href="${item.url}">${item.name}</a></td>
					                            				<td>${item.moduleName}</td>
					                            				<td>${item.parentId}</td>
					                            				<td>${item.sortNo}</td>
					                            				<td><i class="${item.icon}"></i></td>
					                            				<td>${item.level}</td>
					                            				<td>${item.nextFlag}</td>
					                            				<td>${item.createPerson}</td>
					                            				<td>${item.createDate}</td>
					                            			</tr>
					                            		</#list>
					                            	</#if>
							                    </tbody>
					                        </table>
					                    </div><!-- /.box-body -->
					                </div><!-- /.box -->
						      </div><!-- /.row -->
						    </div>
						</div>
					</div>
            <!-- /.right-side -->
            <div class="control-sidebar-bg"></div>
                        </div>
                        	<!-- 模态框（Modal） -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
				   aria-labelledby="myModalLabel" aria-hidden="true">
				   <div class="modal-dialog">
				      <div class="modal-content">
				         <div class="modal-header">
				            <button type="button" class="close" data-dismiss="modal" 
				               aria-hidden="true">×
				            </button>
				            <h4 class="modal-title" id="myModalLabel">
				               模态框（Modal）标题
				            </h4>
				         </div>
				         <div class="modal-body">
				            按下 ESC 按钮退出。
				         </div>
				         <div class="modal-footer">
				            <button type="button" class="btn btn-default" 
				               data-dismiss="modal">关闭
				            </button>
				            <button type="button" class="btn btn-primary">
				               提交更改
				            </button>
				         </div>
				      </div><!-- /.modal-content -->
				   </div><!-- /.modal-dialog -->
				</div><!-- /.modal -->
        </div><!-- ./wrapper -->
    	<script src="/resources/js/plugins/jquery/jQuery-2.1.4.min.js"></script>
        <script src="/resources/js/plugins/bootstrap.min.js" type="text/javascript"></script>
        <script src="/resources/js/AdminLTE/app.min.js" type="text/javascript"></script>
        <script src="http://cdn.bootcss.com/json2/20150503/json2.js"></script>
    	<script src="/resources/js/plugins/slimScroll/jquery.slimscroll.min.js"></script>
    	<script src="/resources/js/plugins/fastclick/fastclick.min.js"></script>
    	<!-- DataTables -->
    	<script src="/resources/js/plugins/datatables/jquery.dataTables.min.js"></script>
    	<script src="/resources/js/plugins/datatables/dataTables.bootstrap.min.js"></script>
    	
    	<script>
	      $(function () {
	      	$('#add').on('click',function(){
	      		$('#modal').modal('show');
	      	});
	        $('#managetable').DataTable({
	          "paging": true,
	          "lengthChange": false,
	          "searching": true,
	          "ordering": false,
	          "info": false,
	          "autoWidth": false,
	           pageLength: 5,
		        language: {
		            "lengthMenu": "Display _MENU_ records per page",
		            "zeroRecords": " 对不起，没有数据!",
		            "info": "展示 page _PAGE_ of _PAGES_",
		            "infoEmpty": "",
		            "infoFiltered": "",
		            "search": "搜索:",
		            "dteFormInfo":"您确定要删除这条数据吗？",
		            "paginate": {//分页的样式文本内容。
	                     previous: "上一页",
	                     next: "下一页",
	                     first: "第一页",
	                     last: "最后一页"
	                    }
		        	}
	        });
	      });
    </script>
    </body>
</html>
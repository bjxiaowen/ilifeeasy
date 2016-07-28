<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.1.1
Version: 2.0.2
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8"/>
<title>创力 | 配置中心 - 菜单资源管理</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link rel="stylesheet" type="text/css" href="/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN GENERAL STYLES -->
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
<!-- END GENERAL STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="/resources/css/themes/default/style.min.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/themes/select/select2.css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/themes/select/select2-metronic.css"/>
<!-- END PAGE LEVEL STYLES -->
<!-- BEGIN THEME STYLES -->
<link rel="stylesheet" type="text/css" href="/resources/css/style-metronic.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/style.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/style-responsive.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/plugins.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" type="text/css" href="/resources/css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
<link rel="stylesheet" type="text/css" href="/resources/css/custom.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">

<#include "header.ftl" >

<div class="clearfix">
</div>

<!-- ajax -->
<div id="modal_cl" class="modal fade" tabindex="-1"></div>

<!-- BEGIN CONTAINER -->
<div class="page-container">
	
	<#include "../sidebar.ftl" >

	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN PAGE HEADER-->
			<div class="row">
				<div class="col-md-12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">
					菜单资源管理
					</h3>
					<ul class="page-breadcrumb breadcrumb">
						<li>
							<i class="fa fa-home"></i>
							<a href="">
								主页
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a href="">
								配置中心
							</a>
							<i class="fa fa-angle-right"></i>
						</li>
						<li>
							<a>
								菜单资源管理
							</a>
						</li>
					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-6">
					<div class="portlet grey box">
						<div class="portlet-title">
							<div class="caption">
								菜单资源树
							</div>						
						</div>
						<div class="portlet-body">
			           		<div id="tree_cl" class="tree-demo">
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="portlet grey box">
						<div class="portlet-title">
							<div class="caption">
								菜单资源管理
							</div>
						</div>
						<div class="portlet-body form">
							<!-- BEGIN FORM-->
							<form action="#" id="form_cl" class="form-horizontal">
								<div class="form-body">
									<div class="form-group">
										<label class="control-label col-md-3">名称
										<span class="required">
											 *
										</span>
										</label>
										<div class="col-md-8">
											<input type="hidden" id="id" name="id"/>
											<input type="text" id="name" name="name" data-required="1" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3">URL
										<span class="required">
											 *
										</span>
										</label>
										<div class="col-md-8">
											<input type="text" id="url" name="url" data-required="1" class="form-control"/>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3">序号
										<span class="required">
											 *
										</span>
										</label>
										<div class="col-md-8">
											<input id="sortNo" name="sortNo" type="text" class="form-control" maxlength="5"/>
										</div>
									</div>
									<div class="form-group">
										<label class="control-label col-md-3">备注
										</label>
										<div class="col-md-8">
											<input type="text" id="remark" name="remark" data-required="1" class="form-control"/>
										</div>
									</div>
								</div>
								<div class="form-actions fluid">
									<div class="col-md-offset-3 col-md-9">
										<button type="submit" class="btn blue" onclick="javascript:Cl.action='create';">增加</button>
										<button type="submit" class="btn blue" onclick="javascript:Cl.action='update';">修改</button>
										<button type="button" class="btn blue" onclick="javascript:Resource.remove();">删除</button>
										<button type="button" class="btn blue" onclick="javascript:Resource.clear();">取消</button>
									</div>
								</div>
							</form>
							<!-- END FORM-->
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->

<#include "../footer.ftl" >

<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="${IncPath}/assets/plugins/respond.min.js"></script>
<script src="${IncPath}/assets/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="/resources/js/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="/resources/js/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="/resources/js/bootstrap/bootstrap.min.js" type="text/javascript"></script>
<script src="/resources/js/bootstrap/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="/resources/js/plugins/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="/resources/js/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="/resources/js/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="/resources/js/plugins/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN GENERAL PLUGINS -->
<script src="/resources/js/bootstrap/bootstrap-modalmanager.js" type="text/javascript"></script>
<script src="/resources/js/bootstrap/bootstrap-modal.js" type="text/javascript"></script>
<script src="/resources/js/plugins/jquery.validate.min.js"></script>
<script src="/resources/js/plugins/jquery-validation/dist/additional-methods.min.js"></script>
<!-- END GENERAL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/resources/js/plugins/jstree.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script src="/resources/js/plugins/app.js"></script>
<script src="/resources/js/plugins/cl.js"></script>
<script src="/resources/js/plugins/resource.js"></script>
<script>
    jQuery(document).ready(function() {       
       App.init();
       Cl.initModal();
       TreeCl.init();
       FormCl.init();
    });
</script>
</body>
</html>

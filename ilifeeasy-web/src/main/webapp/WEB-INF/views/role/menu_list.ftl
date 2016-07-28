<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>菜单管理</title>
		<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
   		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
   		<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="skin-blue">
			<#include "header.ftl">
			<div class="panel panel-primary" style="overflow-x:hidden;">
			   <div class="panel-heading">
				<div class="panel-title">
					<span> 菜单管理</span>
					<div class="btn-group" data-toggle="buttons" style="float:right">
						<button type="button" class="btn btn-primary btn-sm">添加</button>
						<button type="button" class="btn btn-primary btn-sm">删除</button>
						<button type="button" class="btn btn-primary btn-sm">修改</button>
						<button type="button" class="btn btn-primary btn-sm">查询</button>
					</div>
				</div>
			   </div>
			   <div class="panel-body">
				<form class="form-horizontal" role="form">
					<div class="row form-group">
						<label for="name" class="col-sm-1  control-label">菜单名称</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="firstname" placeholder="菜单名称">
						</div>
						<label for="url" class="col-sm-1 control-label">菜单url</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="url"  placeholder="菜单url">
						</div>
						<label for="parentId" class="col-sm-1 control-label">上级菜单</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="lastname"  placeholder="菜单url">
						</div>
						<label for="parentId" class="col-sm-1 control-label">创建人</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="createPerson" placeholder="创建人">
						</div>
					</div>
					<div class="form-group">
						<label for="level" class="col-sm-1  control-label">排序</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="level" placeholder="排序">
						</div>
						<label for="name" class="col-sm-1  control-label">菜单图标</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="icon" placeholder="带单图标">
						</div>
						<label for="structure" class="col-sm-1  control-label">菜单结构</label>
						<div class="col-sm-2">
							<select name="type" class="form-control" data-size="5" value="<%=search.type||''%>">
								<option>一级菜单</option>
								<option>二级菜单</option>
								<option>三级菜单</option>
							</select>
						</div>
						<label for="name" class="col-sm-1  control-label">下级菜单</label>
						<div class="col-sm-2">
							<select name="type" class="form-control" data-size="5" value="<%=search.type||''%>">
								<option>无</option>
								<option>有</option>
							</select>
						</div>
					</div>
				</form>
			   </div>
			   <div class="row" >
			   	<div class="col-md-12">
					<table class="table table-bordered">
						<tr>
							<th>序号</th>
						             <th>菜单名称</th>
						             <th>URL</th>
						             <th>排序</th>
						             <th>创建人</th>
						             <th>创建时间</th>
						             <th>菜单分级</th>
						             <th>下级菜单</th>
						 </tr>                                        
					</table>
				 </div>
			   </div>
			</div>
		</div>
	</body>
</html>
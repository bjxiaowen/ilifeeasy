<!-- Right side column. Contains the navbar and content of the page -->
<div class="box box-solid">
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
                    <table class="table table-bordered" id="manage-table">
                        <thead>
                            <tr>
                                <th>名称</th>
                                <th>编码</th>
                                <th>上级菜单</th>
                                <th>排序</th>
                                <th>菜单图标</th>
                                <th>层级</th>
                                <th>下级</th>
                                <th>创建人</th>
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
<!-- /.right-side -->    
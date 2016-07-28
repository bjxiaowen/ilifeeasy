 <!-- Right side column. Contains the navbar and content of the page -->
<aside class="right-side">
       <!-- Content Header (Page header) -->
       <section class="content-header">
            <h1>菜单管理</h1>
      </section>
      <!-- Main content -->
      <section class="content">
            <div class="row">
               <div class="col-xs-12">
                    <div class="box">
                          <div class="box-header">
                              <form class="form-horizontal" role="form" style="margin-top:10px;">
									<div class="form-group">
										<label for="name" class="col-sm-1  control-label">菜单名称</label>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="firstname" placeholder="菜单名称">
										</div>
										<label for="url" class="col-sm-1 control-label">菜单url</label>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="url" 
										            placeholder="菜单url">
										</div>
										<label for="parentId" class="col-sm-1 control-label">上级菜单</label>
										<div class="col-sm-2">
											<input type="text" class="form-control" id="lastname" 
										            placeholder="菜单url">
										</div>
										<label for="parentId" class="col-sm-1 control-label">创建人</span></label>
										<div class="col-sm-2">
											<input type="text" class="form-control"  id="createPerson"  placeholder="创建人">
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
										<div class="col-sm-12" style="margin-top:10px;margin-buttom:0px;" >
											<div class="pull-right">
												<button type="button" class="btn btn-primary btn-sm ">添加</button>
												<button type="button" class="btn btn-primary btn-sm ">删除</button>
												<button type="button" class="btn btn-primary btn-sm ">修改</button>
												<button type="button" class="btn btn-primary btn-sm ">查询</button>
											</div>
										</div>
									</div>
								</form>
                          </div><!-- /.box-header -->
                                <div class="box-body table-responsive" style="padding:0px;">
                                    <table id="example2" class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Rendering engine</th>
                                                <th>Browser</th>
                                                <th>Platform(s)</th>
                                                <th>Engine version</th>
                                                <th>CSS grade</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Trident</td>
                                                <td>Internet
                                                    Explorer 4.0</td>
                                                <td>Win 95+</td>
                                                <td> 4</td>
                                                <td>X</td>
                                            </tr>
                                            <tr>
                                                <td>Trident</td>
                                                <td>Internet
                                                    Explorer 5.0</td>
                                                <td>Win 95+</td>
                                                <td>5</td>
                                                <td>C</td>
                                            </tr>
                                            <tr>
                                                <td>Trident</td>
                                                <td>Internet
                                                    Explorer 5.5</td>
                                                <td>Win 95+</td>
                                                <td>5.5</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Trident</td>
                                                <td>Internet
                                                    Explorer 6</td>
                                                <td>Win 98+</td>
                                                <td>6</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Trident</td>
                                                <td>Internet Explorer 7</td>
                                                <td>Win XP SP2+</td>
                                                <td>7</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Trident</td>
                                                <td>AOL browser (AOL desktop)</td>
                                                <td>Win XP</td>
                                                <td>6</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Gecko</td>
                                                <td>Firefox 1.0</td>
                                                <td>Win 98+ / OSX.2+</td>
                                                <td>1.7</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Gecko</td>
                                                <td>Firefox 1.5</td>
                                                <td>Win 98+ / OSX.2+</td>
                                                <td>1.8</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Gecko</td>
                                                <td>Firefox 2.0</td>
                                                <td>Win 98+ / OSX.2+</td>
                                                <td>1.8</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Gecko</td>
                                                <td>Firefox 3.0</td>
                                                <td>Win 2k+ / OSX.3+</td>
                                                <td>1.9</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Gecko</td>
                                                <td>Camino 1.0</td>
                                                <td>OSX.2+</td>
                                                <td>1.8</td>
                                                <td>A</td>
                                            </tr>
                                            <tr>
                                                <td>Gecko</td>
                                                <td>Camino 1.5</td>
                                                <td>OSX.3+</td>
                                                <td>1.8</td>
                                                <td>A</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div><!-- /.box-body -->
                                <div class="box-footer clearfix">
                                	<ul class="pagination pagination-sm no-margin pull-right">
                                		<li><a href="#">«</a></li>
										<li><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#">4</a></li>
										<li><a href="#">»</a></li>
                                	</ul>
                                </div>
                            </div><!-- /.box -->
                        </div>
                    </div>

       </section>
</aside>
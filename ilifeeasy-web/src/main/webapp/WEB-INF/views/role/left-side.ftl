<aside class="left-side sidebar-offcanvas">                
     <!-- sidebar: style can be found in sidebar.less -->
     <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="/resources/images/head/avatar3.png" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>Hello, Jane</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                      	<#if menuList ?? && (menuList)?size &gt; 0>
							   <#list menuList as item>
							   		 <li class="treeview">
							   		 	<a href="#">
			                                <i class="${item.icon}"></i>
			                                <span>${item.name}</span>
			                                <#if item.nextFlag==('true')>
			                                	<i class="fa fa-angle-left pull-right"></i>
			                                </#if>
			                            </a>
										<#if item.children ?? && (item.children)?size &gt; 0>
											 <#list item.children as child>
											 	  <ul class="treeview-menu">
					                                 <li><a href="${child.url}">
					                                		<i class="${child.icon}"></i>
					                                		<span>${child.name}</span>
					                                		 <#if child.nextFlag==('true')>
							                                	<i class="fa fa-angle-left pull-right"></i>
							                       			 </#if>
					                                	</a>
					                                </li>
					                            </ul>
											</#list> 
										</#if>
							   		 </li>
							   </#list> 
						</#if>
                      	<li class="treeview">
                            <a href="#">
                                <i class="fa fa-users"></i>
                                <span>${menuList[0].name}</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li class="treeview">
                                	<a href="#">
                                		<i class="fa fa-circle-o"></i>
                                		<span>用户管理</span>
                                		<i class="fa fa-angle-left pull-right"></i>
                                	</a>
                                	 <ul class="treeview-menu">
                                	 	  <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> General Elements</a></li>
                                		  <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> Advanced Elements</a></li>
                                		  <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> Editors</a></li>  
                                	 </ul>
                                </li>
                                <li><a href="pages/charts/flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
                                <li><a href="pages/charts/inline.html"><i class="fa fa-circle-o"></i> Inline charts</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa  fa-th-list"></i>
                                <span>试题管理</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
                                <li><a href="pages/UI/icons.html"><i class="fa fa-angle-double-right"></i> Icons</a></li>
                                <li><a href="pages/UI/buttons.html"><i class="fa fa-angle-double-right"></i> Buttons</a></li>
                                <li><a href="pages/UI/sliders.html"><i class="fa fa-angle-double-right"></i> Sliders</a></li>
                                <li><a href="pages/UI/timeline.html"><i class="fa fa-angle-double-right"></i> Timeline</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-gear"></i> <span>权限管理</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="http://127.0.0.1:8080/role/addRole.html"><i class="fa fa-circle-o"></i> 新增角色</a></li>
                                <li><a href="http://127.0.0.1:8080/role/editRole.html"><i class="fa fa-circle-o"></i>修改角色</a></li>  
                                <li><a href="http://127.0.0.1:8080/role/allotRole.html"><i class="fa fa-circle-o"></i>分配权限</a></li>
                                <li><a href="http://127.0.0.1:8080/role/manageRole.html"><i class="fa fa-circle-o"></i>角色管理</a></li>                                
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-table"></i> <span>Tables</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/tables/simple.html"><i class="fa fa-angle-double-right"></i> Simple tables</a></li>
                                <li><a href="pages/tables/data.html"><i class="fa fa-angle-double-right"></i> Data tables</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="pages/calendar.html">
                                <i class="fa fa-calendar"></i> <span>Calendar</span>
                                <small class="badge pull-right bg-red">3</small>
                            </a>
                        </li>
                        <li>
                            <a href="pages/mailbox.html">
                                <i class="fa fa-envelope"></i> <span>Mailbox</span>
                                <small class="badge pull-right bg-yellow">12</small>
                            </a>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-folder"></i> <span>Examples</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="pages/examples/invoice.html"><i class="fa fa-angle-double-right"></i> Invoice</a></li>
                                <li><a href="pages/examples/login.html"><i class="fa fa-angle-double-right"></i> Login</a></li>
                                <li><a href="pages/examples/register.html"><i class="fa fa-angle-double-right"></i> Register</a></li>
                                <li><a href="pages/examples/lockscreen.html"><i class="fa fa-angle-double-right"></i> Lockscreen</a></li>
                                <li><a href="pages/examples/404.html"><i class="fa fa-angle-double-right"></i> 404 Error</a></li>
                                <li><a href="pages/examples/500.html"><i class="fa fa-angle-double-right"></i> 500 Error</a></li>                                
                                <li><a href="pages/examples/blank.html"><i class="fa fa-angle-double-right"></i> Blank Page</a></li>
                            </ul>
                        </li>
                    </ul>
          </section>
</aside>

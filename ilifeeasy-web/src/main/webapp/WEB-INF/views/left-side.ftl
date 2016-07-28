<aside class="main-sidebar">                
     <!-- sidebar: style can be found in sidebar.less -->
     <section class="sidebar">
                    <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
             
              <#if user ??>
              	<#if user.username ??>
              		 <p>${user.username}</p>
              	</#if>
              </#if>
              <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
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
							   		<#if parentId==item.id>
							   			 <li class="treeview active">
							   			 <#else>
							   			 	<li class="treeview">
							   		</#if>
							   		 	<a href="#" id="${item.url}" >
			                                <i class="${item.icon}"></i>
			                                <span>${item.name}</span>
			                                <#if item.nextFlag==('true')>
			                                	<i class="fa fa-angle-left pull-right"></i>
			                                </#if>
			                            </a>
										<#if item.children ?? && (item.children)?size &gt; 0>
											<ul class="treeview-menu menu-open">
											 <#list item.children as child>
											 	  	 <li><a href="#" rid="${child.url}">
					                                		<i class="${child.icon}"></i>
					                                		<span>${child.name}</span>
					                                		 <#if child.nextFlag==('true')>
							                                	<i class="fa fa-angle-left pull-right"></i>
							                       			 </#if>
					                                	</a>
					                                </li>
											</#list> 
											 </ul>
										</#if>
							   		 </li>
							   </#list> 
						</#if>
                    </ul>
          </section>
</aside>

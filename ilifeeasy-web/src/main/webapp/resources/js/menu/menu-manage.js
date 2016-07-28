var editor;
	      $(function () {
	      	editor = new $.fn.dataTable.Editor( {
		        ajax: {
		            create: {
		                type: 'POST',
                		url:  'http://localhost:8080/menuManage/add.html',
                		dataSrc: 'data'
		            },
		            edit: {
		                type: 'POST',
                		url:  'http://localhost:8080/menuManage/edit.html?id=_id_',
                		dataSrc: 'data'
		            },
		            remove: {
		               type: 'POST',
                	   url:  'http://localhost:8080/menuManage/delete.html?id=_id_',
                	   dataSrc: 'data'
		            }
		        },
		        
		        table: "#menutable",
		        idSrc:  'id',
		        fields: [ {
		                label: "名称:",
		                name: "name"
			            }, {
			                label: "菜单编码:",
			                name: "moduleName"
			            },{
			            	label: "url:",
			                name:  "url"
			            },{
			                label: "上级菜单:",
			                name: "parentId"
			            },
			            {
			                label: "排序:",
			                name: "sortNo"
			            }, {
			                label: "图标:",
			                name: "icon"
			            }, {
			                label: "创建人:",
			                name: "createPerson"
			            },{
			            	label:"创建时间",
			            	name:"createDate",
			            	type:'datetime',
			            	format: 'YYYY-MM-DD HH:mm:ss'
			            },{
			            	label:"层级",
			            	name:"level",
			            	type:  "select",
			            	options: [
			                    { label: "1级", value: "1" },
			                    { label: "2级",           value: "2" },
			                    { label: "3级",           value: "3" },
			                    { label: "4级",           value: "4" },
			                    { label: "5级",  value: "5" }
			                ]
			            },{
			            	label:"是否有下级",
			            	name:"nextFlag",
			            	type:"radio",
			            	options: [
			                    { label: "无", value: false },
			                    { label: "有",  value: true}
			                ],
			                "default": false
			            }
			            
			        ],
			    i18n: {
			            create: {
			                button: "添加",
			                title:  "添加",
			                submit: "添加"
			            },
			            edit: {
			                button: "修改",
			                title:  "修改",
			                submit: "修改"
			            },
			            remove: {
			                button: "删除",
			                title:  "删除",
			                submit: "删除"
			            },
			            datetime: {
		                previous: '上',
		                next:     '下',
		                months:   [ '1月', '2月', '3月', '4月', '5月', '6月', '7月', '8月', '9月', '10月', '11月', '12月' ],
		                weekdays: [ '周日', '周一', '周二', '周三', '周四', '周五', '周六' ]
		            }
			      }
		    } );
		    
		    var openVals;
			    editor.on( 'open', function () {
			            // Store the values of the fields on open
			            openVals = JSON.stringify( editor.get() );
			        } )
			       
			        editor.on('preSubmit', function () {
					    if ( this.get( 'name' ) === '' ) {
					        this.error( 'name', '这个字段是必需填写的' );
					        return false;
					    }
					    if ( this.get( 'url' ) === '' ) {
					        this.error( 'url', '这个字段是必需填写的' );
					        return false;
					    }
					    return true;
					} );
	      	
	       var table= $('#menutable').DataTable({
	          dom: "Bfrtip",
	          paging: true,
	          pageLength: 12,
	          lengthChange: false,
	          searching: true,
	          ordering: false,
	          info: false,
	          ajax: {
	              url:'http://localhost:8080/menuManage/search.html',
				  dataSrc: 'data'
	          },
	         columns:[
	          	{data:"name"},
	          	{data:"moduleName"},
	          	{
	          		data:"url",
	          		"render": function ( data, type, full, meta ) {
				      return '<a href="'+data+'">'+data+'</a>';
				    }
	          	},
	          	{data:"parentId"},
	          	{data:"sortNo"},
	          	{
	          		data:"icon",
	          		render: function ( file_id ) {
                    return file_id ?'<i class="'+file_id+'"></i>' :null;
                	}
	          	},
	          	{data:"createPerson"},
	          	{data:"createDate"},
	          	{
	          		data:"level",
	          		defaultContent: "<i>null</i>"
	          	},
	          	{
	          		"class": "center",
	          		"data":"nextFlag",
	          		"render": function (val, type, row) {
                    	return val == 'true' ? "是" : "无";
                	}
	          	}
	          ],
	        select: true,
	        buttons: [
		            {	extend: "create", editor: editor,
		                formButtons: [
		                    '添加',
		                    { label: '取消', fn: function () { this.close(); } }
		                ]
		             },
		            {   extend: "edit",   editor: editor,
		                formButtons: [
		                    '修改',
		                    { label: '取消', fn: function () { this.close(); } }
		                ]
		             },
		            { 	extend: "remove", editor: editor,
		                formButtons: [
		                    '删除',
		                    { label: '取消', fn: function () { this.close(); } }
		                ]
		             },
		            {	extend: 'collection',
		                text: '导出',
		                buttons: [
		                    'copy',
		                    'excel',
		                    'csv',
		                    'pdf',
		                    'print'
		                ]
		            }
		        ],
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
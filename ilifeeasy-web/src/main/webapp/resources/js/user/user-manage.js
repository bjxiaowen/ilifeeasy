var editor;
	      $(function () {
	      	editor = new $.fn.dataTable.Editor( {} );
	      	
	       var table= $('#user-table').DataTable({
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
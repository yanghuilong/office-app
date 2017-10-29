(function ($, toastr) {

    $(document).ready(function () {


        // add menu confirm
        $("#menuCofirmBtn").on('click',function () {
            $("#menuForm").validate({
                rules:{
                    menuName:{
                        required:true
                    },
                    menuURL:{
                        required:true
                    }
                },
                messages: {
                    menuName: {
                        required: "请输入菜单名称"
                    },
                    menuURL:{
                        required:"请输入菜单连接"
                    }
                },
                errorClass: "help-inline",
                errorElement: "span",
                highlight:function(element, errorClass, validClass) {
                    $(element).parents('.controls').addClass('has-error');
                },
                unhighlight: function(element, errorClass, validClass) {
                    $(element).parents('.controls').removeClass('has-error');
                    $(element).parents('.controls').addClass('has-success');
                },
                errorPlacement: function(error, element) {
                    $(error).addClass('has-error');
                    error.appendTo(element.parents(".controls"));
                },
                submitHandler: function(form)
                {
                    $(form).ajaxSubmit({
                        success: function(data) { // data 保存提交后返回的数据，一般为 json 数据
                            if (data.status != 200) {
                                // 此处可对 data 作相关处理
                                $.gritter.add({
                                    title:	'Message',
                                    text:	data.message,
                                    sticky: false,
                                    time: 1000,
                                    speed:500
                                });
                                return
                            }
                            //window.location.href = webpath+"/admin/home"
                        },
                        error: function (error) {
                        }
                    });
                }
            });
            $("#menuForm").submit()

        })


        var newRowID = null;
        // prepare the data
        var source =
            {
                url: webPath + "/admin/menu/list",
                dataType: "json",
                dataFields: [
                    {name: "id", type: "int"},
                    {name: "menuName", type: "string"},
                    {name: "menuIcon", type: "string"},
                    {name: "menuURL", type: "string"},
                    {name: "menuCode", type: "string"},
                    {name: "menuIndex", type: "int"},
                    {name: "parentID", type: "int"},
                    {name: "createdDate", type: "string"},
                    {name: "officeMenus"}
                ],
                hierarchy: {
                    root: 'officeMenus'
                },
                id: 'id',
                formatdata: function (data) {
                    return data;
                },
                addRow: function (rowID, rowData, position, parentID, commit) {
                    // synchronize with the server - send insert command
                    // call commit with parameter true if the synchronization with the server is successful
                    // and with parameter false if the synchronization failed.
                    // you can pass additional argument to the commit callback which represents the new ID if it is generated from a DB.
                    commit(true);
                    newRowID = rowID;
                }
            };

        var dataAdapter = new $.jqx.dataAdapter(source);
        $("#treeGrid").jqxTreeGrid(
            {
                width: '80%',
                source: dataAdapter,
                columns: [
                    {text: '菜单ID', dataField: 'id', width: '10%'},
                    {text: '菜单名称', dataField: 'menuName', width: '20%'},
                    {text: '菜单链接', dataField: 'menuURL', width: '20%'},
                    {text: '菜单图标', dataField: 'menuIcon', width: '10%'},
                    {text: '菜单编码', dataField: 'menuCode', width: '10%'},
                    {text: '菜单排序编号', dataField: 'menuIndex', width: '10%'},
                    {text: '创建时间', dataField: 'createdDate'}
                ],
                renderToolbar: function (toolBar) {
                    var addButton = $("#addMenuBtn");
                    var editButton = $("#editMenuBtn");
                    var deleteButton = $("#removeMenuBtn");
                    var rowKey = null;
                    $("#treeGrid").on('rowSelect', function (event) {
                        var args = event.args;
                        rowKey = args.key;
                    });
                    $("#treeGrid").on('rowUnselect', function (event) {
                    });
                    $("#treeGrid").on('rowEndEdit', function (event) {
                    });
                    $("#treeGrid").on('rowBeginEdit', function (event) {
                    });
                    addButton.click(function (event) {
                        // 显示modal
                        $("#addMenuModal").modal("show");
                        // 获取选中的行
                        var selection = $("#treeGrid").jqxTreeGrid('getSelection');
                        // 把选中的数据带过去
                        packageModalData('add', selection[0])
                    });
                    editButton.click(function () {
                        var isCompleted = $("#treeGrid").jqxTreeGrid('isBindingCompleted');
                        if(isCompleted) {
                            $("#treeGrid").jqxTreeGrid('render');
                        }
                    });
                    deleteButton.click(function () {
                        if (!deleteButton.jqxButton('disabled')) {
                            var selection = $("#treeGrid").jqxTreeGrid('getSelection');
                            if (selection.length > 1) {
                                var keys = new Array();
                                for (var i = 0; i < selection.length; i++) {
                                    keys.push($("#treeGrid").jqxTreeGrid('getKey', selection[i]));
                                }
                                $("#treeGrid").jqxTreeGrid('deleteRow', keys);
                            }
                            else {
                                $("#treeGrid").jqxTreeGrid('deleteRow', rowKey);
                            }
                        }
                    });
                }
            });


        /**
         * 把选中的数据封装到 modal 中
         * @param type 是编辑 还 新增
         * @param menu
         */
        var packageModalData = function (type, menu) {
            if (!type) {
                toastr.info("页面错误 ， 请尝试刷新页面。。。")
                return
            }

            var $parentID = $("#parentID")
            var $parentMenuName = $("#parentMenuName")
            var $menuname = $("#menuname")
            var $menuname = $("#menuURL")
            var $menuCode = $("#menuCode")
            var $menuIcon = $("#menuIcon")
            var $menuIndex = $("#menuIndex")
            if (type == 'edit') {

            } else if (type == 'add' && menu) {
                debugger
                if(menu.menuName){
                    $parentMenuName.val(menu.menuName)
                }
                if (menu.id) {
                    $parentID.val(menu.id)
                }
            }
        }
    })

})(jQuery, toastr)
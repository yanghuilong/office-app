<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>菜单管理页面</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/res/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/res/admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/res/admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/res/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <link href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/styles/jqx.base.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/styles/jqx.bootstrap.css" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://cdn.bootcss.com/html5shiv/3.7.0/html5shiv.min.js"></script>
    <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>s
    <![endif]-->

    <script>
        var webPath = '${pageContext.request.contextPath}';
    </script>
</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <jsp:include page="../common/leftMenu.jsp" flush="true"></jsp:include>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h4 class="page-header">菜单管理</h4>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <ol class="breadcrumb">
                            <li><a href="${pageContext.request.contextPath}/admin/home">首页</a></li>
                            <li class="active">菜单管理</li>
                        </ol>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-sm-offset-0 col-sm-12" style="margin-top: 15px; margin-bottom: 15px">
                                <!-- Single button -->
                                <p>
                                    <button type="button" id="addMenuBtn" class="btn btn-default"  data-toggle="modal">
                                        新增菜单
                                    </button>
                                    <button type="button" id="editMenuBtn" class="btn btn-default">
                                        编辑菜单
                                    </button>
                                    <button type="button" id="removeMenuBtn" class="btn btn-default">
                                        移除菜单
                                    </button>
                                </p>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12" style="padding-right: 15px">
                                <div id="treeGrid"></div>
                            </div>
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
</div>
<!-- Modal  新增菜单Modal-->
<div class="modal fade" id="addMenuModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" id="myModalLabel">新增菜单</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-10">
                        <form class="form-horizontal" id="menuForm" action="${pageContext.request.contextPath}/admin/menu/insert" method="post">
                            <div class="form-group">
                                <label for="parentMenuName" class="col-sm-4 control-label">父级菜单</label>
                                <div class="col-sm-8 controls">
                                    <input type="text" class="form-control" id="parentMenuName" readonly="readonly" name="parentMenuName" placeholder="">
                                    <input type="hidden" class="form-control" id="parentID" name="parentID" />
                                    <input type="hidden" class="form-control" id="menuId" name="id" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="menuName" class="col-sm-4 control-label">菜单名称</label>
                                <div class="col-sm-8 controls">
                                    <input type="text" class="form-control" id="menuName" name="menuName" required="required" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="menuURL" class="col-sm-4 control-label">菜单URL</label>
                                <div class="col-sm-8 controls">
                                    <input type="text" class="form-control" id="menuURL" name="menuURL" required="required" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="menuIcon" class="col-sm-4 control-label">菜单图标</label>
                                <div class="col-sm-8 controls">
                                    <input type="text" class="form-control" id="menuIcon" name="menuIcon" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="menuCode" class="col-sm-4 control-label">菜单编码</label>
                                <div class="col-sm-8 controls">
                                    <input type="text" class="form-control" id="menuCode" name="menuCode" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="menuIndex" class="col-sm-4 control-label">排序编号</label>
                                <div class="col-sm-8 controls">
                                    <input type="text" class="form-control" id="menuIndex" name="menuIndex" placeholder="">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="menuCofirmBtn">确定</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- /#wrapper -->
<script src="https://cdn.bootcss.com/toastr.js/latest/toastr.min.js"></script>

<%-- jqwidgets --%>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/jqxcore.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/jqxdata.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/jqxbuttons.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/jqxscrollbar.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/jqxdatatable.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/jqxtreegrid.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.validate.min.js"></script>
<%--<script type="text/javascript" src="${pageContext.request.contextPath}/res/admin/vendor/jqwidgets/jqxdatatable.js"></script>--%>

<!-- Custom Theme JavaScript -->
<script src="${pageContext.request.contextPath}/res/admin/bussiness/utils.js"></script>
<script src="${pageContext.request.contextPath}/res/admin/bussiness/menu/menu.js"></script>
</body>

</html>

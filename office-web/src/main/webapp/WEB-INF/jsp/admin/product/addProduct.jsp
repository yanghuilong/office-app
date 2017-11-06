<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="zh-CN">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Bootstrap Admin Theme</title>

    <!-- Bootstrap Core CSS -->
    <link href="${pageContext.request.contextPath}/res/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="${pageContext.request.contextPath}/res/admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${pageContext.request.contextPath}/res/admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${pageContext.request.contextPath}/res/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://cdn.bootcss.com/toastr.js/latest/css/toastr.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/res/admin/vendor/webuploader/webuploader.css" rel="stylesheet" type="text/css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
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
                    <h4 class="page-header">新增产品</h4>
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
                                <li><a>产品管理</a></li>
                                <li class="active">新增产品</li>
                            </ol>
                        </div>
                        <div class="panel-body">
                            <form class="form-horizontal">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="productName" class="col-sm-2 control-label">产品名称</label>
                                            <div class="col-sm-8 controls">
                                                <input type="text" class="form-control" id="productName" name="productName" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="productTitle" class="col-sm-2 control-label">产品标题</label>
                                            <div class="col-sm-8 controls">
                                                <input type="text" class="form-control" id="productTitle" name="productTitle" placeholder="">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="productColor" class="col-sm-2 control-label">产品颜色</label>
                                            <div class="col-sm-8 controls">
                                                <input type="text" class="form-control" id="productColor" name="productColor" placeholder="red, green ...">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label for="productPrice" class="col-sm-2 control-label">产品价格</label>
                                            <div class="col-sm-8 controls">
                                                <input type="text" class="form-control" id="productPrice" name="productPrice" placeholder="10.00">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label  class="col-sm-2 control-label">是否是特价商品</label>
                                            <div class=" col-sm-8">
                                                <div class="checkbox controls">
                                                    <label>
                                                        <input type="radio" value="1" name="isSpecial"> &nbsp;是 <input type="radio" value="0" name="isSpecial"> &nbsp;否
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="productSpecialPrice" class="col-sm-2 control-label">产品特价</label>
                                            <div class="col-sm-8 controls">
                                                <input type="text" class="form-control" id="productSpecialPrice" name="productSpecialPrice" placeholder="10.00">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <label for="productTitle" class="col-sm-1 control-label">产品相册</label>
                                        <div class="col-sm-10 controls">
                                            <div id="uploadimg">
                                                <div id="fileList" class="uploader-list"></div>
                                                <div id="imgPicker">选择图片</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <label for="productTitle" class="col-sm-1 control-label">产品描述</label>
                                        <div class="col-sm-10 controls">
                                            <%--ueditor 控件--%>
                                            <jsp:include page="../../um/um.jsp" flush="true"></jsp:include>
                                        </div>
                                    </div>
                                </div>
                            </form>
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
    <!-- /#wrapper -->
    <script src="${pageContext.request.contextPath}/res/admin/vendor/webuploader/webuploader.min.js"></script>
    <script src="https://cdn.bootcss.com/toastr.js/latest/toastr.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/admin/bussiness/utils.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="${pageContext.request.contextPath}/res/admin/bussiness/product/addProduct.js"></script>
</body>

</html>

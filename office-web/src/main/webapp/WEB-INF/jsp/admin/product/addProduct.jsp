<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <title>新增产品</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/uniform.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/select2.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/matrix-style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/matrix-media.css" />
    <link href="${pageContext.request.contextPath}/res/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <script src="${pageContext.request.contextPath}/res/admin/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/res/admin/js/jquery.ui.custom.js"></script>
    <script src="${pageContext.request.contextPath}/res/admin/js/bootstrap.min.js"></script>
    <%--<link href='http://fonts.useso.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>--%>
</head>
<body>

<!--Header-part-->
<div id="header">
    <h1><a href="${pageContext.request.contextPath}/admin/home">Matrix Admin</a></h1>
</div>
<!--close-Header-part-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome User</span><b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
                <li class="divider"></li>
                <li><a href="login.html"><i class="icon-key"></i> Log Out</a></li>
            </ul>
        </li>
        <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">Messages</span> <span class="label label-important">5</span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> new message</a></li>
                <li class="divider"></li>
                <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> inbox</a></li>
                <li class="divider"></li>
                <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> outbox</a></li>
                <li class="divider"></li>
                <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> trash</a></li>
            </ul>
        </li>
        <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">Settings</span></a></li>
        <li class=""><a title="" href="login.html"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
    </ul>
</div>

<!--start-top-serch-->
<div id="search">
    <input type="text" placeholder="Search here..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->

<!--sidebar-menu-->
<jsp:include page="../common/leftMenu.jsp" flush="true"></jsp:include>

<div id="content">
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#">Form elements</a> <a href="#" class="current">Validation</a> </div>
        <h1>Form validation</h1>
    </div>
    <div class="container-fluid"><hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
                        <h5>Form validation</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="#" name="basic_validate" id="basic_validate" novalidate="novalidate">
                            <div class="control-group">
                                <label class="control-label">Your Name</label>
                                <div class="controls">
                                    <input type="text" name="required" id="required">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Your Email</label>
                                <div class="controls">
                                    <input type="text" name="email" id="email">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Date (only Number)</label>
                                <div class="controls">
                                    <input type="text" name="date" id="date">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">URL (Start with http://)</label>
                                <div class="controls">
                                    <input type="text" name="url" id="url">
                                </div>
                            </div>
                            <div class="form-actions">
                                <input type="submit" value="Validate" class="btn btn-success">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
                        <h5>Numeric validation</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal" method="post" action="#" name="number_validate" id="number_validate" novalidate="novalidate">
                            <div class="control-group">
                                <label class="control-label">Minimal Salary</label>
                                <div class="controls">
                                    <input type="text" name="min" id="min" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Maximum Salary</label>
                                <div class="controls">
                                    <input type="text" name="max" id="max" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Only digit</label>
                                <div class="controls">
                                    <input type="text" name="number" id="number" />
                                </div>
                            </div>
                            <div class="form-actions">
                                <input type="submit" value="Validate" class="btn btn-success">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="row-fluid">
                <div class="span12">
                    <div class="widget-box">
                        <div class="widget-title"> <span class="icon"> <i class="icon-info-sign"></i> </span>
                            <h5>Security validation</h5>
                        </div>
                        <div class="widget-content nopadding">
                            <form class="form-horizontal" method="post" action="#" name="password_validate" id="password_validate" novalidate="novalidate">
                                <div class="control-group">
                                    <label class="control-label">Password</label>
                                    <div class="controls">
                                        <input type="password" name="pwd" id="pwd" />
                                    </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label">Confirm password</label>
                                    <div class="controls">
                                        <input type="password" name="pwd2" id="pwd2" />
                                    </div>
                                </div>
                                <div class="form-actions">
                                    <input type="submit" value="Validate" class="btn btn-success">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Footer-part-->
<div class="row-fluid">
    <div id="footer" class="span12"> 2013 &copy; Matrix Admin. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a> </div>
</div>
<!--end-Footer-part-->
<script src="${pageContext.request.contextPath}/res/admin/js/jquery.uniform.js"></script>
<script src="${pageContext.request.contextPath}/res/admin/js/select2.min.js"></script>
<script src="${pageContext.request.contextPath}/res/admin/js/jquery.validate.js"></script>
<script src="${pageContext.request.contextPath}/res/admin/js/matrix.js"></script>
<script src="${pageContext.request.contextPath}/res/admin/js/matrix.form_validation.js"></script>
</body>
</html>

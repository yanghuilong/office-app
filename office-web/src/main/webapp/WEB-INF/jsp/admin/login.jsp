<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
        <title>Matrix Admin</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/matrix-login.css" />
        <link href="${pageContext.request.contextPath}/res/admin/font-awesome/css/font-awesome.css" rel="stylesheet" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/res/admin/css/jquery.gritter.css" />
        <%--<script src="${pageContext.request.contextPath}/res/admin/js/matrix.form_validation.js"></script>--%>
        <script type="text/JavaScript">
            var webpath = "${pageContext.request.contextPath}";
        </script>
    </head>
    <body>
        <div id="loginbox">            
            <form id="loginform" class="form-vertical" action="${pageContext.request.contextPath}/admin/loginIn" method="post" novalidate="novalidate">
                <div class="control-group normal_text"> <h3><img src="${pageContext.request.contextPath}/res/admin/img/logo.png" alt="Logo" /></h3></div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" name="userName" id="userName" placeholder="Username" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" id="passWord" name="passWord" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left"><a class="flip-link btn btn-info" id="to-recover">Lost password?</a></span>
                    <span class="pull-right"><button type="submit" id="loginSubmit" class="btn btn-success"> Login</button></span>
                </div>
            </form>
            <form id="recoverform" action="#" class="form-vertical">
				<p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>
				
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><button  class="flip-link btn btn-success" id="to-login" onclick="document.forms[0].submit()">&laquo; Back to login</button></span>
                    <span class="pull-right"><a class="btn btn-info">Reecover</a></span>
                </div>
            </form>
        </div>
        <script src="${pageContext.request.contextPath}/res/admin/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/res/admin/js/jquery.gritter.min.js"></script>
        <script src="${pageContext.request.contextPath}/res/admin/js/jquery.validate.js"></script>
        <script src="${pageContext.request.contextPath}/res/js/jquery.form.js"></script>
        <script src="${pageContext.request.contextPath}/res/admin/bussiness/login/matrix.login.js"></script>
    </body>

</html>

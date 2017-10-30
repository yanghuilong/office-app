<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/10/20
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header id="header">
    <div class="container">
        <!-- BEGIN: row -->
        <div class="row">
            <!--BEGIN: logo-->
            <div class="span3 logo">
                <a href="./index.html"><img src="${pageContext.request.contextPath }/res/images/logo.png" alt="logo" /></a>
            </div><!--END: logo-->
            <!--BEGIN: search&phone content-->
            <div class="span9 hidden-phone">
                <!--BEGIN: phone -->
                <span class="phone">Call US (999) 123 - 325 - 456</span>
                <!--END: phone-->
                <div class="clear"></div>
                <!--BEGIN: search-->
                <form id="search" />
                <p><input type="text" name="search site" value="Search..." onfocus="if(this.value=='Search...') this.value=''" onblur="if(this.value=='') this.value='Search...'" /></p>
                <p><input type="submit" name="submit" value="" class="search-bt" /></p>
                </form><!--END search-->
            </div><!--END: search&phone -->
        </div><!-- END: row -->
        <!--BEGIN: menu-->
        <nav id="menu">
            <ul>
                <jsp:include page="menu.jsp"></jsp:include>
            </ul>
        </nav>
        <!--END: menu-->
    </div>
</header>
<script src="https://cdn.bootcss.com/superfish/1.7.9/js/superfish.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/hoverIntent.js"></script>
<script>
    //Menu
    jQuery('#menu > ul').superfish();
</script>

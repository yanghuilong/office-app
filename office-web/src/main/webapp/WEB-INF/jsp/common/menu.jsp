<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/10/20
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String path = request.getContextPath(); pageContext.setAttribute("path", path); %>
${sessionScope.get("menu")}
<ul>
    <li class="current">
        <a href="${path}">Home</a>
    </li>
    <li>
        <a href="#">Production</a>
        <ul>
            <li class="current"><a href="#">menu item</a></li>
            <li><a href="#aba">menu item</a></li>
            <li><a href="#abb">menu item</a></li>
            <li><a href="#abc">menu item</a></li>
            <li><a href="#abd">menu item</a></li>
        </ul>
    </li>
    <li>
        <a href="#">menu item</a>
        <ul>
            <li>
                <a href="#">menu item</a>
                <ul>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                </ul>
            </li>
            <li>
                <a href="#">menu item</a>
                <ul>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                </ul>
            </li>
            <li>
                <a href="#">menu item</a>
                <ul>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                </ul>
            </li>
            <li>
                <a href="#">menu item</a>
                <ul>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                </ul>
            </li>
            <li>
                <a href="#">menu item</a>
                <ul>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                    <li><a href="#">menu item</a></li>
                </ul>
            </li>
        </ul>
    </li>
    <li>
        <a href="#">Contact</a>
        <ul>
            <li class="current"><a href="#">menu item</a></li>
            <li><a href="#aba">menu item</a></li>
            <li><a href="#abb">menu item</a></li>
            <li><a href="#abc">menu item</a></li>
            <li><a href="#abd">menu item</a></li>
        </ul>
    </li>
</ul>
<script src="https://cdn.bootcss.com/superfish/1.7.9/js/superfish.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/hoverIntent.js"></script>
<script>
    //Menu
    jQuery('#menu > ul').superfish();
</script>
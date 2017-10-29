<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2017/10/20
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% String path = request.getContextPath(); pageContext.setAttribute("path", path); %>
<ul>
    <c:forEach var="parentMenu" items="${sessionScope.menu}">
        <c:set var="sms" value='${parentMenu.officeMenus}' scope="session"></c:set>
        <%-- <c:out value="${fn:length(subMenus[key])}"/> --%>
        <c:choose>
            <c:when test='${not empty sms and fn:length(sms) > 0}'>
                <li><a class="MenuBarItemSubmenu" href="${parentMenu.menuURL}" target="ff">${parentMenu.menuName}</a>
                    <ul>
                        <c:forEach var="sm" items="${sms}">
                            <c:set var="menu" value="${sms}" scope="session" />
                            <c:import url="menu.jsp" />
                        </c:forEach>
                    </ul></li>
            </c:when>
            <c:otherwise>
                <li><a href="#" target="ff">${parentMenu.menuName}</a></li>
            </c:otherwise>
        </c:choose>
    </c:forEach>
   <%-- <li class="current">
        <a href="${pageContext.request.contextPath }">Home</a>
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
    </li>--%>
</ul>
<script src="https://cdn.bootcss.com/superfish/1.7.9/js/superfish.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/hoverIntent.js"></script>
<script>
    //Menu
    jQuery('#menu > ul').superfish();
</script>
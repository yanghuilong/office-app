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
<c:forEach var="parentMenu" items="${menu}">
    <c:set var="sms" value='${parentMenu.officeMenus}' scope="request"/>
    <c:choose>
        <c:when test='${not empty sms and fn:length(sms) > 0}'>
            <li>
                <a href="${parentMenu.menuURL}" >${parentMenu.menuName}</a>
                <ul>
                    <c:forEach var="sm" items="${sms}">
                        <c:set var="menu" value="${sms}" scope="request" />
                        <jsp:include page="menu.jsp"/>
                    </c:forEach>
                </ul>
            </li>
        </c:when>
        <c:otherwise>
            <li><a href="${parentMenu.menuURL}" >${parentMenu.menuName}</a></li>
        </c:otherwise>
    </c:choose>
</c:forEach>
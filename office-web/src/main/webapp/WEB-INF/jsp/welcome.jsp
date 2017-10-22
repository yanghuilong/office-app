
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">
<jsp:include page="common/script.jsp"></jsp:include>
<jsp:include page="um/umScript.jsp"></jsp:include>
<body>
<c:url value="/resources/text.txt" var="url"/>
<spring:url value="/resources/text.txt" htmlEscape="true" var="springUrl" />
Spring URL: ${springUrl} at ${time}
<br>
JSTL URL: ${url}
121
<br>
Message: ${message}111
<jsp:include page="um/um.jsp" flush="true"></jsp:include>
</body>

</html>
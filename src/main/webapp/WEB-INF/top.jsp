<html>
<head>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

<a href="/dashboard">Dashboard</a>

<h1>Top Ten Songs</h1>
<c:forEach items="${top}" var="one" varStatus="loop">
<p><c:out value="${one.rating}"></c:out> - <c:out value="${one.artistTitle}"></c:out> - <c:out value="${one.artistName}"></c:out></p>
</c:forEach>
</body>
</html>
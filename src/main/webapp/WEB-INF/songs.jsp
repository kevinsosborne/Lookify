<html>
<head>
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>

<a href="/dashboard">Dashboard</a>

<p>Title <c:out value="${playlist.artistTitle}"></c:out></p>
<p>Artist <c:out value="${playlist.artistName}"></c:out></p>
<p>Rating <c:out value="${playlist.rating}"></c:out></p>

<a href="/delete/${playlist.id}">Delete</a>

</body>
</html>
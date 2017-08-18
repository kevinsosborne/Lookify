<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
</head>
<body>
<a href="/songs/new">Add New Song</a>
<a href="/songs/top">Top Songs</a>

<form method="POST" action="/search">
	<input type="text" name="search" value="">
	<input type="submit" name="submit" value="Search">
</form>

<table>
	<tr>
		<th>Name</th>
		<th>Rating</th>
		<th>Actions</th>	
	</tr>
 <c:forEach items="${allplaylist}" var="playlist" varStatus="loop">	
	<tr>
		<td>	<a href="/songs/${playlist.id}">${playlist.artistName}</a></td>
		<td><c:out value="${playlist.artistTitle}"></c:out></td>
		<td><c:out value="${playlist.rating}"></c:out></td>
	</tr>
</c:forEach>
</table>
</body>
</html>

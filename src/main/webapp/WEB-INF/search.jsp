<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
</head>
<body>

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
 <c:forEach items="${getByArtist}" var="byartist" varStatus="loop">	
	<tr>
		<td>	<a href="/songs/${byartist.id}">${byartist.artistName}</a></td>
		<td><c:out value="${byartist.artistTitle}"></c:out></td>
		<td><c:out value="${byartist.rating}"></c:out></td>
	</tr>
</c:forEach>
</table>
</body>
</html>
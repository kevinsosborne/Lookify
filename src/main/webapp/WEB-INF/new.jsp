<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
</head>
<body>

<a href="/dashboard">Dashboard</a>

<form:form method="POST" action="/songs/new" modelAttribute="playlist">
	<form:label path="artistTitle">Title
	<form:errors path="artistTitle"/>
	<form:input path="artistTitle"/></form:label>
	<form:label path="artistName">Artist
	<form:errors path="artistName"/>
	<form:input path="artistName"/></form:label>
	<form:label path="rating">Rating (1-10)
	<form:errors path="rating"/>
	<form:select path="rating">
		<c:forEach var = "i" begin = "1" end = "10">
		<form:option value="${i}">${i}</form:option>
		</c:forEach>
		</form:select>
	</form:label>
	<input type="submit" value="Add Song"/>
</form:form>
	 
</body>
</html>

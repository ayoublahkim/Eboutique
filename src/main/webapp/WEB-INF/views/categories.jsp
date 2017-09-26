<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catégories</title>
</head>
<body>
	<div id="formCat">
		<f:form modelAttribute="categorie" action="saveCat" method="post"
			enctype="multipart/form-data">
			<table>
				<tr>
					<td>ID Catégorie</td>
					<td><f:input path="idCategorie" /></td>
					<td><f:errors path="idCategorie" cssClass="errors" /></td>
				</tr>
				<tr>
					<td>Nom Catégorie</td>
					<td><f:input path="nomCategorie" /></td>
					<td><f:errors path="nomCategorie" cssClass="errors" /></td>
				</tr>
				<tr>
					<td>Déscription Catégorie</td>
					<td><f:textarea path="description" /></td>
					<td><f:errors path="description" cssClass="errors" /></td>
				</tr>
				<tr>
					<td>Photo</td>
					<td><input type="file" name="file" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Save"/></td>
				</tr>
			</table>
		</f:form>
	</div>
	<div id="">
		<table>
			<tr>
				<th>ID</th>
				<th>Nom Catégorie</th>
				<th>Déscription </th>
				<th>Photo</th>
			</tr>

			<c:forEach items="${categories}" var="cat">
				<tr>
					<td>${cat.idCategorie}</td>
					<td>${cat.nomCategorie}</td>
					<td>${cat.description}</td>
					<td><img src="photoCat?idCat=${cat.idCategorie}"/></td>

				</tr>

			</c:forEach>




		</table>

	</div>
</body>
</html>
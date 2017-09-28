<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/CSS/style1.css" />

<!-- <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" -->
<!-- 	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" -->
<!-- 	integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" -->
<!-- 	crossorigin="anonymous"></script> -->
<!-- <script -->
<!-- 	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" -->
<!-- 	integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" -->
<!-- 	crossorigin="anonymous"></script> -->
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Catégories</title>
</head>
<body>
	<div>${exception }</div>


	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Ajout catégorie</div>
			<div class="panel-body">
				<f:form modelAttribute="categorie" action="saveCat" method="post"
					enctype="multipart/form-data">
					<table>
						<tr>
							<td>ID Catégorie</td>
							<td><f:input path="idCategorie"/></td>
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
							<td><c:if test="${categorie.idCategorie!=null}">
									<img src="photoCat?idCat=${categorie.idCategorie}" />
								</c:if></td>
							<td><input type="file" name="file" /></td>
						</tr>

						<tr>
							<td><input class="btn btn-primary" type="submit"
								value="Save" /></td>

						</tr>
					</table>
				</f:form>
			</div>
		</div>




		<div id="tabCategories">
			<div class="panel panel-primary">
				<div class="panel-heading">Liste des catégories</div>
				<div class="panel-body">
					<table >
						<tr>
							<th>ID</th>
							<th>Nom Catégorie</th>
							<th>Déscription</th>
							<th>Photo</th>
						</tr>

						<c:forEach items="${categories}" var="cat">
							<tr>
								<td>${cat.idCategorie}</td>
								<td>${cat.nomCategorie}</td>
								<td>${cat.description}</td>
								<td><img src="photoCat?idCat=${cat.idCategorie}" /></td>
								<td><a href="suppCat?idCat=${cat.idCategorie}">Supprimer</a></td>
								<td><a href="editCat?idCat=${cat.idCategorie}">Modifier</a></td>

							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
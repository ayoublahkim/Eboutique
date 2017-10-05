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
	href="<%=request.getContextPath()%>/resources/css/style1.css" />

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
<title>Produits</title>
</head>
<body>
	<div>${exception}</div>
<div>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="<c:url value="/j_spring_security_logout"/>"> Logout </a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>
</div>
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">Ajout Produit</div>
			<div class="panel-body">
			<div class="table-responsive">
				<f:form modelAttribute="produit" action="saveProd" method="post"
					enctype="multipart/form-data">
					
						<table>
							<tr>
								<td>ID Produit</td>
								<td><f:input path="idProduit" class="form-control" /></td>
								<td><f:errors path="idProduit" cssClass="errors" /></td>
							</tr>
							<tr>

								<td>Désignation</td>
								<td><f:input path="designation" class="form-control" /></td>
								<td><f:errors path="designation" cssClass="errors" /></td>
							</tr>
							<tr>
								<td>Déscription</td>
								<td><f:textarea path="description" class="form-control" /></td>
								<td><f:errors path="description" cssClass="errors" /></td>
							</tr>
							<tr>
								<td>Catégorie</td>
								<td><f:select path="categorie.idCategorie"
										items="${categories}" itemValue="idCategorie"
										itemLabel="nomCategorie" class="form-control" /></td>
								<td><f:errors path="categorie" cssClass="errors" /></td>
							</tr>
							<tr>
							<tr>
								<td>Quantité</td>
								<td><f:input path="quantite" class="form-control" /></td>
								<td><f:errors path="quantite" cssClass="errors" /></td>
							</tr>
							<tr>
								<td>Prix</td>
								<td><f:input path="prix" class="form-control" /></td>
								<td><f:errors path="prix" cssClass="errors" /></td>
							</tr>
							<tr>
								<td>Séléctionné</td>
								<td><f:checkbox path="selected" class="form-control" /></td>
								<td><f:errors path="selected" cssClass="errors" /></td>
							</tr>

							<td>Photo</td>
							<td><c:if test="${produit.idProduit!=null}">
									<img src="photoProd?idProd=${produit.idProduit}" />
								</c:if></td>
							<td><input type="file" name="file" class="form-control" /></td>
							</tr>

							<tr>
								<td><input class="btn btn-primary" type="submit"
									value="Save" /></td>

							</tr>
						</table>
				</f:form>
			</div>
		</div>
	</div>



	<div id="tabProduits">
		<div class="panel panel-primary">
			<div class="panel-heading">Liste des produits</div>
			<div class="panel-body">
				<table class="table">
					<tr>
						<th>ID</th>
						<th>Nom Produit</th>
						<th>Désignation</th>
						<th>Déscription</th>
						<th>Catégorie</th>
						<th>Quantité</th>
						<th>Prix</th>
						<th>Selectionné</th>
						<th>Photo</th>
					</tr>

					<c:forEach items="${produits}" var="prod">
						<tr>
							<td>${prod.idProduit}</td>
							<td>${prod.designation}</td>
							<td>${prod.description}</td>
							<td>${prod.categorie.nomCategorie}</td>
							<td>${prod.quantite}</td>
							<td>${prod.prix}</td>
							<td>${prod.selected}</td>
							<td>${prod.prix}</td>
							<td><img src="photoProd?idProd=${prod.idProduit}" /></td>
							<td><a href="suppProd?idProd=${prod.idProduit}">Supprimer</a></td>
							<td><a href="editProd?idProd=${prod.idProduit}">Modifier</a></td>

						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	</div>

</body>
</html>
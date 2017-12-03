<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<body>--%>
	<%--<h1>Title : ${title}</h1>--%>
	<%--<h1>Message : ${message}</h1>--%>

	<%--<sec:authorize access="hasRole('ROLE_USER')">--%>
		<%--<!-- For login user -->--%>
		<%--<c:url value="/logout" var="logoutUrl" />--%>
		<%--<form action="${logoutUrl}" method="post" id="logoutForm">--%>
			<%--<input type="hidden" name="${_csrf.parameterName}"--%>
				<%--value="${_csrf.token}" />--%>
		<%--</form>--%>
		<%--<script>--%>
			<%--function formSubmit() {--%>
				<%--document.getElementById("logoutForm").submit();--%>
			<%--}--%>
		<%--</script>--%>

		<%--<c:if test="${pageContext.request.userPrincipal.name != null}">--%>
			<%--<h2>--%>
				<%--User : ${pageContext.request.userPrincipal.name} | <a--%>
					<%--href="javascript:formSubmit()"> Logout</a>--%>
			<%--</h2>--%>
		<%--</c:if>--%>
	<%--</sec:authorize>--%>
<%--</body>--%>
<%--</html>--%>

<html lang="en">

<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Heroic Features - Start Bootstrap Template</title>

	<!-- Bootstrap core CSS -->
	<link href="<c:url value="resources/css/bootstrap/bootstrap.css" />" rel="stylesheet">
	<link href="<c:url value="resources/css/bootstrap/bootstrap.min.css" />" rel="stylesheet">
	<link href="<c:url value="resources/js/bootstrap/bootstrap.js" />" rel="javascript">
	<link href="<c:url value="resources/js/jquery/jquery-3.2.1.slim.min.js" />" rel="javascript">

	<!-- Custom styles for this template -->
	<link href="<c:url value="resources/css/hello.css" />" rel="stylesheet">

</head>

<body>

<%--<c:if test="${pageContext.request.userPrincipal.name == null}">--%>
<%--<h1>Message : ${message}</h1>--%>
<%--</c:if>--%>

<%--<sec:authorize access="hasRole('ROLE_USER')">--%>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
	<div class="container">
		<a class="navbar-brand" href="#">Start Bootstrap</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active">
					<a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">About</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Services</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Contact</a>
				</li>
				<div class="col-sm-6 col-centered">
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<a class="btn btn-info" href="/user?id=${pageContext.request.userPrincipal.name}">${pageContext.request.userPrincipal.name}</a>
						<a class="btn btn-warning" href="/logout">Logout</a>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name == null}">
						<a class="btn btn-success" href="/login">Login</a>
					</c:if>
				</div>
			</ul>
		</div>
	</div>
</nav>

<!-- Page Content -->
<div class="container">

	<!-- Jumbotron Header -->
	<header class="jumbotron my-4">
		<h1 class="display-3">A Warm Welcome!</h1>
		<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>
		<a href="#" class="btn btn-primary btn-lg">Call to action!</a>
	</header>

	<!-- Page Features -->
	<div class="row text-center">

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body" >
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

		<div class="col-lg-3 col-md-6 mb-4">
			<div class="card">
				<img class="card-img-top" src="http://placehold.it/500x325" alt="">
				<div class="card-body">
					<h4 class="card-title">Card title</h4>
					<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
				</div>
				<div class="card-footer">
					<a href="#" class="btn btn-primary">Find Out More!</a>
				</div>
			</div>
		</div>

	</div>
	<!-- /.row -->

</div>
<!-- /.container -->

<!-- Footer -->
<footer class="py-5 bg-dark">
	<div class="container">
		<p class="m-0 text-center text-white">Copyright &copy; Your Website 2017</p>
	</div>
	<!-- /.container -->
</footer>
<%--</sec:authorize>--%>
</body>

</html>
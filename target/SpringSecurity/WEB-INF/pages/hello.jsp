<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>Heroic Features - Start Bootstrap Template</title>

	<!-- Bootstrap core CSS -->
	<link href="<c:url value="resources/css/bootstrap/bootstrap.css" />" rel="stylesheet">
	<script src="<c:url value="resources/js/jquery/jquery.min.js" />"></script>
	<script src="<c:url value="resources/js/bootstrap/bootstrap.bundle.min.js" />"></script>
	<link href="<c:url value="resources/css/font-awesome.css" />" rel="stylesheet">
	<!-- Custom styles for this template -->
	<link href="<c:url value="resources/css/hello.css" />" rel="stylesheet">

</head>

<body>

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
					<a class="nav-link" href="/">Home
						<span class="sr-only">(current)</span>
					</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/recruits">Recruits</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/staff">Staff</a>
				</li>
				<li class="nav-item">
					<c:if test="${pageContext.request.userPrincipal.name != null}">
						<a class="btn btn-light" href="/user?id=${pageContext.request.userPrincipal.name}">${pageContext.request.userPrincipal.name}</a>
						<a class="btn btn-danger" href="/logout">Logout</a>
					</c:if>
					<c:if test="${pageContext.request.userPrincipal.name == null}">
						<a class="btn btn-success" href="/login">Login</a>
					</c:if>
				</li>
			</ul>
		</div>
	</div>
</nav>

<!-- Page Content -->
<div class="container">

	<div class="row">

		<!-- Blog Entries Column -->
		<div class="col-md-8">

			<!-- Jumbotron Header -->
			<header class="jumbotron bg-dark text-white" style="margin-top: 20px; padding: 20px;">
				<h1 class="display-3">News</h1>
				<p class="lead">Our last news and updates</p>
			</header>

			<c:forEach items="${posts}" var="item">
			<!-- Blog Post -->
			<div class="card mb-4" id="post${item.postId}" style="border: 0px">
				<c:if test="${!item.image.equals(\"\")}">
					<img class="card-img-top" src="resources/pictures/${item.image}" alt="Card image cap">
				</c:if>
				<div class="card-body">
					<h2 class="card-title">${item.title}</h2>
					<a href="/post?id=${item.postId}" class="btn btn-primary">Read More &rarr;</a>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
							<a class="btn btn-danger fa fa-trash-o pull-right" aria-hidden="true"
							   onclick="$.get('/remove-post?id=${item.postId}');
									   document.getElementById('post${item.postId}').innerHTML = '';">
							</a>
					</sec:authorize>
				</div>
				<div class="card-footer text-muted">
					Posted on ${item.date} by ${item.author}
				</div>
			</div>
			</c:forEach>

			<%--<!-- Blog Post -->--%>
			<%--<div class="card mb-4">--%>
				<%--<img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">--%>
				<%--<div class="card-body">--%>
					<%--<h2 class="card-title">Post Title</h2>--%>
					<%--<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>--%>
					<%--<a href="#" class="btn btn-primary">Read More &rarr;</a>--%>
				<%--</div>--%>
				<%--<div class="card-footer text-muted">--%>
					<%--Posted on January 1, 2017 by--%>
					<%--<a href="#">Start Bootstrap</a>--%>
				<%--</div>--%>
			<%--</div>--%>

			<%--<!-- Blog Post -->--%>
			<%--<div class="card mb-4">--%>
				<%--<img class="card-img-top" src="http://placehold.it/750x300" alt="Card image cap">--%>
				<%--<div class="card-body">--%>
					<%--<h2 class="card-title">Post Title</h2>--%>
					<%--<p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam. Dicta expedita corporis animi vero voluptate voluptatibus possimus, veniam magni quis!</p>--%>
					<%--<a href="#" class="btn btn-primary">Read More &rarr;</a>--%>
				<%--</div>--%>
				<%--<div class="card-footer text-muted">--%>
					<%--Posted on January 1, 2017 by--%>
					<%--<a href="#">Start Bootstrap</a>--%>
				<%--</div>--%>
			<%--</div>--%>

			<!-- Pagination -->
			<ul class="pagination justify-content-center mb-4">
				<li class="page-item">
					<a class="page-link" href="#">&larr; Older</a>
				</li>
				<li class="page-item disabled">
					<a class="page-link" href="#">Newer &rarr;</a>
				</li>
			</ul>

		</div>

		<!-- Sidebar Widgets Column -->
		<div class="col-md-4">

			<!-- Search Widget -->
			<div class="card my-4">
				<%--<h5 class="card-header">Search</h5>--%>
				<%--<div class="card-body">--%>
					<%--<div class="input-group">--%>
						<%--<input type="text" class="form-control" placeholder="Search for...">--%>
						<%--<span class="input-group-btn">--%>
			  <%--<button class="btn btn-secondary" type="button">Go!</button>--%>
			<%--</span>--%>
					<%--</div>--%>
				<%--</div>--%>
					<div>
						<div class="input-group stylish-input-group">
							<input type="text" class="form-control"  placeholder="Search" >
							<span class="input-group-addon btn-dark">
								<%--<button type="submit">--%>
									<span class="fa fa-search fa-lg"></span>
								<%--</button>--%>
							</span>
						</div>
					</div>
			</div>

			<%--<!-- Categories Widget -->--%>
			<%--<div class="card my-4">--%>
				<%--<h5 class="card-header">Categories</h5>--%>
				<%--<div class="card-body">--%>
					<%--<div class="row">--%>
						<%--<div class="col-lg-6">--%>
							<%--<ul class="list-unstyled mb-0">--%>
								<%--<li>--%>
									<%--<a href="#">Web Design</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="#">HTML</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="#">Freebies</a>--%>
								<%--</li>--%>
							<%--</ul>--%>
						<%--</div>--%>
						<%--<div class="col-lg-6">--%>
							<%--<ul class="list-unstyled mb-0">--%>
								<%--<li>--%>
									<%--<a href="#">JavaScript</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="#">CSS</a>--%>
								<%--</li>--%>
								<%--<li>--%>
									<%--<a href="#">Tutorials</a>--%>
								<%--</li>--%>
							<%--</ul>--%>
						<%--</div>--%>
					<%--</div>--%>
				<%--</div>--%>
			<%--</div>--%>

			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<div class="card my-4">
				<h5 class="card-header">Admin menu</h5>
				<div class="card-body">
					<button type="button" class="btn btn-outline-dark" style="width: 100%;">
						<div class="row">
							<div class="col-md-12 text-lg-left">
								<span style="font-size: 16px">Add post</span>
							</div>
						</div>
					</button>
					<button type="button" class="btn btn-outline-dark" style="width: 100%; margin-top: 10px">
						<div class="row">
							<div class="col-md-12 text-lg-left">
								<span style="font-size: 16px">Add User</span>
							</div>
						</div>
					</button>
					<button type="button" class="btn btn-outline-dark" style="width: 100%; margin-top: 10px">
						<div class="row">
							<div class="col-md-12 text-lg-left">
								<span style="font-size: 16px">Remove User</span>
							</div>
						</div>
					</button>
				</div>
			</div>
			</sec:authorize>
		</div>

	</div>
	<!-- /.row -->
</div>

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
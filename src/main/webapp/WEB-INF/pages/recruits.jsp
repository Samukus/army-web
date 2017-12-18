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
    <link href="<c:url value="resources/js/bootstrap/bootstrap.js" />" rel="javascript">
    <link href="<c:url value="resources/js/jquery/jquery-3.2.1.slim.min.js" />" rel="javascript">
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
                <li class="nav-item ">
                    <a class="nav-link" href="/">Home
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="#">About</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="#">Services</a>--%>
                <%--</li>--%>
                <%--<li class="nav-item">--%>
                <%--<a class="nav-link" href="#">Contact</a>--%>
                <%--</li>--%>
                <li class="nav-item active">
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

    <!-- Jumbotron Header -->
    <%--<header class="jumbotron">--%>
    <%--<h1 class="display-3">A Warm Welcome!</h1>--%>
    <%--<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa, ipsam, eligendi, in quo sunt possimus non incidunt odit vero aliquid similique quaerat nam nobis illo aspernatur vitae fugiat numquam repellat.</p>--%>
    <%--<a href="#" class="btn btn-primary btn-lg">Call to action!</a>--%>
    <div class="col-lg-12" style="padding: 0">
        <%--<div class="col-sm-6 col-sm-offset-3">--%>
        <div id="imaginary_container">
            <div class="input-group stylish-input-group">
                <input type="text" class="form-control"  placeholder="Search" >
                <span class="input-group-addon btn-dark">
								<%--<button type="submit">--%>
									<span class="fa fa-search fa-lg"></span>
								<%--</button>--%>
							</span>
            </div>
        </div>
        <%--</div>--%>
    </div>
    <%--</header>--%>

    <!-- Page Features -->
    <div class="row text-center">

        <c:forEach items="${users}" var="user">
            <div class="col-lg-4 col-md-4 mb-4">
                <div class="card btn btn-outline-dark" >
                    <a href="/user?id=${user.username}" style="text-decoration: none">
                            <%--<img class="card-img-top" src="http://placehold.it/500x325" alt="">--%>
                        <img class="card-img-top" src="${user.photoLink}" alt="" height="320" width="320">
                    </a>
                    <div class="card-body" >
                        <h4 class="card-title">${user.fname} ${user.sname}</h4>
                        <div class="row"><!-- Title -->
                            <div class="col-sm-6 text-lg-left">
                                <p>Title:</p>
                            </div>
                            <div class="col-sm-6 text-lg-right">
                                <p>${user.rank}</p>
                            </div>
                        </div>
                        <div class="row"><!-- Category -->
                            <div class="col-sm-6 text-lg-left">
                                <p>Category:</p>
                            </div>
                            <div class="col-sm-6 text-lg-right">
                                <p>${user.category}</p>
                            </div>
                        </div>
                        <div class="row"><!-- Status -->
                            <div class="col-sm-6 text-lg-left">
                                <p>Status:</p>
                            </div>
                            <div class="col-sm-6 text-lg-right">
                                <p>${user.status}</p>
                            </div>
                        </div>
                        <div class="row"><!-- Status -->
                            <div class="col-sm-6 text-lg-left">
                                <p>Date:</p>
                            </div>
                            <div class="col-sm-6 text-lg-right">
                                    <%--<p>${status}</p>--%>
                                <p>${user.date}</p>
                            </div>
                        </div>
                    </div>
                        <%--<div class="card-footer">--%>
                        <%--<a href="/user?id=${user.username}" class="btn btn-primary">View</a>--%>
                        <%--</div>--%>
                </div>
            </div>
        </c:forEach>
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
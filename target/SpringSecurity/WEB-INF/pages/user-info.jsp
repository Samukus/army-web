<%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 30.11.17
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>AHM Kamal</title>
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>

    <link href="<c:url value="resources/css/bootstrap/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="resources/css/user-info.css" />" rel="stylesheet">
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

<!-- ******HEADER****** -->
<header class="header">
    <div class="container">
        <div class="teacher-name" style="padding-top:20px;">

            <div class="row" style="margin-top:0px;">
                <div class="col-md-9">
                    <h2 style="font-size:28px"><strong>${fname} ${sname}</strong></h2>
                </div>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <div class="col-md-3">
                        <div class="button" style="float:right;">
                            <a href="#" class="btn btn-warning btn-sm">Edit User Info</a>
                        </div>
                    </div>
                </sec:authorize>
            </div>
        </div>

        <div class="row" style="margin-top:20px;">
            <div class="col-md-3"> <!-- Image -->
                <a href="#"> <img class="rounded-circle" src="resources/pictures/test-user-avatar.jpg" alt="Ibram" style="width:200px;height:200px"></a>
            </div>

            <div class="col-sm-6"> <!-- Rank & Qualifications -->
                <h5 style="color:#3AAA64">${role} <small></small></h5>
                <p>${fname} ${sname} ${tname}</p>
                <div class="row" style="margin-top: 0px"><!-- Title -->
                    <div class="col-sm-3">
                        <p>Title:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${rank}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Address -->
                    <div class="col-sm-3">
                        <p>Address:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${address}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Category -->
                    <div class="col-sm-3">
                        <p>Category:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${category}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Status -->
                    <div class="col-sm-3">
                        <p>Status:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${status}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Email -->
                    <div class="col-sm-3">
                        <p>Email:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${email}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Date of Birth -->
                    <div class="col-sm-3">
                        <p>Date of Birth:</p>
                    </div>
                    <div class="well">
                        <div class="form-group">
                            <input type="date" class="form-control" id="exampleInputDOB1" value="${date}" readonly="readonly">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center"> <!-- Phone & Social -->
                <span class="number" style="font-size:18px">Phone:<strong>${phone}</strong></span>
                <div class="button" style="padding-top:18px">
                    <a href="mailto:${email}" class="btn btn-outline-success btn-block">Send Email</a>
                </div>
                <div class="social-icons" style="padding-top:18px">
                    <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x" style="color:#3AAA64"></i>
              <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
            </span></a>
                    <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x" style="color:#3AAA64"></i>
              <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i>
            </span></a>
                    <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x" style="color:#3AAA64"></i>
              <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
            </span></a>
                    <a href="#">
            <span class="fa-stack fa-lg">
              <i class="fa fa-circle fa-stack-2x" style="color:#3AAA64"></i>
              <i class="fa fa-slideshare fa-stack-1x fa-inverse"></i>
            </span></a>

                </div>
            </div>
        </div>
    </div>
</header>
<!--End of Header-->

<!-- com.mkyong.web.hibernateUtils container -->
<div class="container">

    <!-- Section:Biography -->
    <div class="row">
        <div class="col-md-12">
            <div class="card card-block text-xs-left">
                <div class="row" style="padding: 10px">
                    <div class="col-md-11">
                        <h2 class="card-title" style="color:#009688"><i class="fa fa-user fa-fw"></i>Biography</h2>
                    </div>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <div class="col-md-1 pull-right">
                            <a class="btn btn-warning btn-block" href="#">Edit</a>
                        </div>
                    </sec:authorize>
                </div>

                <div style="padding: 10px">
                    <p>Following his vengeance against Aldo Dercius, Gaunt served as the ranking Commissariat agent for the Hyrkans, and played a crucial part in the battle for the world of Balhaut, where he led his men alongside the Warmaster Slaydo in the centre of the Imperial front, in the mudlakes. In the battle, Gaunt's finest hour, the regiment took on and destroyed the Forces of Chaos' assault carriers. They stormed the Oligarchy Gate, the first Imperial unit to do so, and destroyed the Tower of the Plutocrat, ultimately winning the battle and earning the Hyrkans a place in the annals of Imperial glory.</p>
                <%--<div style="height: 15px"></div>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- End:Biography -->

    <!-- Section:Awards -->
    <div class="row">
        <div class="col-md-12">
            <div class="card card-block" style="padding: 10px">
                <div class="row" style="padding: 10px">
                    <div class="col-md-11">
                        <h2 class="card-title" style="color:#009688"><i class="fa fa-user fa-fw"></i>Awards</h2>
                    </div>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <div class="col-md-1 pull-right">
                            <a class="btn btn-warning btn-block" href="#">Add</a>
                        </div>
                    </sec:authorize>
                </div>
                <table class="table table-bordered table-hover">
                    <thead class="thead-default">
                    <tr>
                        <th>Year</th>
                        <th>Name of the award</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>2006</td>
                        <td>Cloud & Parallel Computing</td>
                    </tr>
                    <tr>
                        <td>2009</td>
                        <td>Big Data Analysis and Management</td>
                    </tr>
                    <tr>
                        <td>2013</td>
                        <td>High-performance and Low-Power Real-Time Systems</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- End:Awards -->

    <!-- Section: Duty Summary -->
    <div class="row">
        <div class="col-md-12">
            <div class="card card-block" style="padding: 10px">
                <div class="row" style="padding: 10px">
                    <div class="col-md-11">
                        <h2 class="card-title" style="color:#009688"><i class="fa fa-user fa-fw"></i>Duty Summary</h2>
                    </div>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <div class="col-md-1 pull-right">
                            <a class="btn btn-warning btn-block" href="#">Add</a>
                        </div>
                    </sec:authorize>
                </div>
                <div style="height: 15px"></div>
                <table class="table table-bordered">
                    <thead class="thead-default">
                    <tr>
                        <th>Year</th>
                        <th>Rank</th>
                        <th>Military unit</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>2006-Present</td>
                        <td>Associate Professor</td>
                        <td>Jatiya Kabi Kazi Nazrul Islam University</td>
                    </tr>
                    <tr>
                        <td>2004-2006</td>
                        <td>Lecturer</td>
                        <td>Brac University</td>
                    </tr>
                    <tr>
                        <td>2003-2004</td>
                        <td>Senior System Administrator</td>
                        <td>Axle Technologies</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- End:Teaching Summary -->

    <!-- Section: Events -->
    <div class="row">
        <div class="col-md-12">
            <div class="card card-block" style="padding: 10px">
                <div class="row" style="padding: 10px">
                    <div class="col-md-11">
                        <h2 class="card-title" style="color:#009688"><i class="fa fa-user fa-fw"></i>Events</h2>
                    </div>
                </div>
                <div style="height: 15px"></div>
                <table class="table table-bordered">
                    <thead class="thead-default" >
                    <tr>
                        <th>Date</th>
                        <th>Description</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>CSE-121</td>
                        <td>Structured Programming</td>
                    </tr>
                    <tr>
                        <td>CSE-221</td>
                        <td>Algorithms</td>
                    </tr>
                    <tr>
                        <td>CSE-305</td>
                        <td>Theory of Computation</td>
                    </tr>
                    <tr>
                        <td>CSE-405</td>
                        <td>Network Security</td>
                    </tr>
                    <tr>
                        <td>CSE-439</td>
                        <td>Digital Image Processing</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- End:Class Observing -->

    <!-- Section: Diagnoses -->
    <div class="row">
        <div class="col-md-12">
            <div class="card card-block" style="padding: 10px">
                <div class="row" style="padding: 10px">
                    <div class="col-md-11">
                        <h2 class="card-title" style="color:#009688"><i class="fa fa-user fa-fw"></i>Diagnoses</h2>
                    </div>
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <div class="col-md-1 pull-right">
                            <a class="btn btn-warning btn-block" href="#">Add</a>
                        </div>
                    </sec:authorize>
                </div>
                <div style="height: 15px"></div>
                <table class="table table-bordered">
                    <thead class="thead-default" >
                    <tr>
                        <th>Diagnose</th>
                        <th>Description</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>CSE-121</td>
                        <td>Structured Programming</td>
                    </tr>
                    <tr>
                        <td>CSE-221</td>
                        <td>Algorithms</td>
                    </tr>
                    <tr>
                        <td>CSE-305</td>
                        <td>Theory of Computation</td>
                    </tr>
                    <tr>
                        <td>CSE-405</td>
                        <td>Network Security</td>
                    </tr>
                    <tr>
                        <td>CSE-439</td>
                        <td>Digital Image Processing</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- End:Class Diagnoses -->

</div> <!--End of Container-->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>

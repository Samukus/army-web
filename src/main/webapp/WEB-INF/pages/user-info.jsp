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
    <link href="<c:url value="resources/css/bootstrap/bootstrap.css" />" rel="stylesheet">

    <script src="<c:url value="resources/js/jquery/jquery.min.js" />"></script>
    <script src="<c:url value="resources/js/bootstrap/bootstrap.bundle.min.js" />"></script>
    <link href="<c:url value="resources/css/font-awesome.css" />" rel="stylesheet">

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
                    <h2 style="font-size:28px"><strong>${user.fname} ${user.sname}</strong></h2>
                </div>
                <sec:authorize access="hasRole('ROLE_ADMIN')">
                    <div class="col-md-3">
                        <div style="float:right;">
                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalEdit">
                                User Edit
                            </button>
                        </div>
                        <%--<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">--%>
                            <%--Launch demo modal--%>
                        <%--</button>--%>
                    </div>
                </sec:authorize>
            </div>
        </div>

        <div class="row" style="margin-top:20px;">
            <div class="col-md-3"> <!-- Image -->
                <a href="#"> <img class="rounded-circle" src="resources/pictures/test-user-avatar.jpg" alt="Ibram" style="width:200px;height:200px"></a>
            </div>

            <div class="col-sm-6"> <!-- Rank & Qualifications -->
                <h5 style="color:#3AAA64">${user.workRole} <small></small></h5>
                <p>${user.sname} ${user.fname} ${user.tname}</p>
                <div class="row" style="margin-top: 0px"><!-- Title -->
                    <div class="col-sm-3">
                        <p>Title:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${user.rank}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Address -->
                    <div class="col-sm-3">
                        <p>Address:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${user.adress}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Category -->
                    <div class="col-sm-3">
                        <p>Category:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${user.category}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Status -->
                    <div class="col-sm-3">
                        <p>Status:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${user.status}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Email -->
                    <div class="col-sm-3">
                        <p>Email:</p>
                    </div>
                    <div class="col-sm-9">
                        <p>${user.email}</p>
                    </div>
                </div>
                <div class="row" style="margin-top: 0px"><!-- Date of Birth -->
                    <div class="col-sm-3">
                        <p>Date of Birth:</p>
                    </div>
                    <div class="well">
                        <div class="form-group">
                            <input type="date" class="form-control" id="exampleInputDOB1" value="${user.date}" readonly="readonly">
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-3 text-center"> <!-- Phone & Social -->
                <span class="number" style="font-size:18px">Phone:<strong>${user.phone}</strong></span>
                <div class="button" style="padding-top:18px">
                    <a href="mailto:${user.email}" class="btn btn-outline-success btn-block">Send Email</a>
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
                </div>

                <div style="padding: 10px">
                    <p>${user.description}</p>
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
                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalAwards">
                                Add
                            </button>
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
                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalDuty">
                                Add
                            </button>
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
                    <sec:authorize access="hasRole('ROLE_ADMIN')">
                        <div class="col-md-1 pull-right">
                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalEvent">
                                Add
                            </button>
                        </div>
                    </sec:authorize>
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
                            <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#exampleModalDiagnoses">
                                Add
                            </button>
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

<!-- Modal -->
<div class="modal fade" id="exampleModalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalEditLabel">User Editor</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal Awards -->
<div class="modal fade" id="exampleModalAwards" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalAwardsLabel">Add Award</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal Duty Summary -->
<div class="modal fade" id="exampleModalDuty" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalDutyLabel">Add Duty Event</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal Event -->
<div class="modal fade" id="exampleModalEvent" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalEventLabel">Add Event</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal Duty Events -->
<div class="modal fade" id="exampleModalEvents" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalEventsLabel">Add Event</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<!-- Modal Duty Diagnoses -->
<div class="modal fade" id="exampleModalDiagnoses" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalDiagnosesLabel">Add Diagnose</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>

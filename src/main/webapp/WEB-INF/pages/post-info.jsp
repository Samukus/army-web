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
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
<c:if test="${!post.image.equals(\"\")}">
    <header class="header">
        <div class="container">
            <div class="teacher-name">

                <div class="row" >
                    <div class="col-md-12"> <!-- Image -->
                        <a href="#"><img class="rounded" src="resources/pictures/${post.image}" alt="Ibram" style="width:100%;height:100%"></a>
                    </div>
                </div>
            </div>
        </div>
    </header>
</c:if>
<!--End of Header-->

<!-- com.mkyong.web.hibernateUtils container -->
<div class="container">
    <!-- Section:Post -->
    <div class="row" style="padding-top: 40px">
        <div class="col-md-12">
            <div class="card card-block text-xs-left">
                <div class="row" style="padding: 10px">
                    <div class="col-md-11">
                        <h2 class="card-title" style="color:#009688"><i class="fa fa-book fa-fw"></i>${post.title}</h2>
                    </div>
                </div>
                <div style="padding: 10px">
                    <h3 class="card-title">
                        ${post.description}
                    </h3>
                </div>
                <div class="card-footer text-muted">
                    Posted on ${post.date} by ${post.author}
                </div>
            </div>
        </div>
    </div>
    <!-- End:Post -->
</div> <!--End of Container-->

<!-- Modal -->
<div class="modal fade" id="exampleModalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 1200px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalEditLabel">User Editor</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%--@elvariable id="User" type="com.mkyong.web.UsersEntity"--%>
            <form:form role="form" method = "POST" action="/changeuser" modelAttribute="User">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="username" value="${user.username}"/>
                <input type="hidden" name="password" value="${user.password}"/>
                <input type="hidden" name="photoLink" value="${user.photoLink}"/>
                <input type="hidden" name="enabled" value="${user.enabled}"/>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>First Name:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="fname" class="form-control" value="${user.fname}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Second Name:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="sname" class="form-control" value="${user.sname}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Third Name:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="tname" class="form-control" value="${user.tname}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>WorkRole:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="workRole" class="form-control" value="${user.workRole}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Title:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="rank" class="form-control" value="${user.rank}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Address:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="adress" class="form-control" value="${user.adress}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Category:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="category" class="form-control" value="${user.category}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Status:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="status" class="form-control" value="${user.status}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Email:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="email" class="form-control" value="${user.email}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Phone:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="phone" class="form-control" value="${user.phone}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Date:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="date" name="date" class="form-control" value="${user.date}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Biography:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="description" class="form-control" style="padding-bottom: 100px;" value="${user.description}">
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form:form>
        </div>
    </div>
</div>

<!-- Modal Awards -->
<div class="modal fade" id="exampleModalAwards" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 600px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalAwardLabel">Add award</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%--@elvariable id="Award" type="com.mkyong.web.AwardsEntity"--%>
            <form:form role="form" method = "POST" action="/addAward" modelAttribute="Award">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="username" value="${user.username}"/>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Date:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="date" name="date" class="form-control" value="${user.date}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Award Name:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="awardName" class="form-control" style="padding-bottom: 100px;" placeholder="Type Award Name here">
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form:form>
        </div>
    </div>
</div>

<!-- Modal Duty Summary -->
<div class="modal fade" id="exampleModalDuty" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 600px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Duty Summary</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%--@elvariable id="Duty" type="com.mkyong.web.DutiesEntity"--%>
            <form:form role="form" method = "POST" action="/addDuty" modelAttribute="Duty">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="username" value="${user.username}"/>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Start Date:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="date" name="dateStart" class="form-control" value="${user.date}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>End Date:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="date" name="dateEnd" class="form-control" value="${user.date}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Rank:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="rank" class="form-control" placeholder="Type Rank here">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Military unit:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="militaryUnit" class="form-control" style="padding-bottom: 100px;" placeholder="Type Military unit here">
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form:form>
        </div>
    </div>
</div>

<!-- Modal Event -->
<div class="modal fade" id="exampleModalEvent" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 600px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Event</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%--@elvariable id="Event" type="com.mkyong.web.EventsEntity"--%>
            <form:form role="form" method = "POST" action="/addEvent" modelAttribute="Event">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="username" value="${user.username}"/>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Date:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="date" name="date" class="form-control" value="${user.date}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-12">
                        <h5>Event Description:</h5>
                        <input type="text" name="description" class="form-control" style="padding-bottom: 100px;" placeholder="Type description here">
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form:form>
        </div>
    </div>
</div>

<!-- Modal Diagnoses -->
<div class="modal fade" id="exampleModalDiagnoses" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 600px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Add Diagnose</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%--@elvariable id="Diagnose" type="com.mkyong.web.DiagnosesEntity"--%>
            <form:form role="form" method = "POST" action="/addDiagnose" modelAttribute="Diagnose">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="username" value="${user.username}"/>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Date:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="date" name="date" class="form-control" value="${user.date}">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Diagnose:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="name" class="form-control" placeholder="Type diagnose here">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-12">
                        <h5>Description:</h5>
                        <input type="text" name="description" class="form-control" style="padding-bottom: 100px;" placeholder="Type diagnose description here">
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </form:form>
        </div>
    </div>
</div>
</body>
</html>

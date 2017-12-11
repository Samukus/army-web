<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: alex
  Date: 12.12.17
  Time: 2:45
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="sec"
          uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="<c:url value="resources/css/bootstrap/bootstrap.css" />" rel="stylesheet">
<script src="<c:url value="resources/js/jquery/jquery.min.js" />"></script>
<script src="<c:url value="resources/js/bootstrap/bootstrap.bundle.min.js" />"></script>
<link href="<c:url value="resources/css/font-awesome.css" />" rel="stylesheet">

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

                <%--<c:if test="${!user}">--%>
                    <%--<div class="row form-group" style="margin: 15px">--%>
                        <%--<div class="col-md-2">--%>
                            <%--<h5>Username</h5>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-10">--%>
                            <%--<input type="text" name="username" class="form-control">--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="row form-group" style="margin: 15px">--%>
                        <%--<div class="col-md-2">--%>
                            <%--<h5>Password</h5>--%>
                        <%--</div>--%>
                        <%--<div class="col-md-10">--%>
                            <%--<input type="text" name="password" class="form-control">--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</c:if>--%>

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

<div class="modal fade" id="exampleModalAdd" tabindex="-1" role="dialog" aria-labelledby="exampleModalAdd" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 1200px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalAddlabel">User Editor</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%--@elvariable id="User" type="com.mkyong.web.UsersEntity"--%>
            <form:form role="form" method = "POST" action="/changeuser" modelAttribute="User">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="photoLink" value="resources/pictures/test-user-avatar.jpg"/>
                <input type="hidden" name="enabled" value="1"/>

                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Username</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="username" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Password</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="password" class="form-control">
                    </div>
                </div>

                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>First Name:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="fname" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Second Name:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="sname" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Third Name:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="tname" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>WorkRole:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="workRole" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Title:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="rank" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Address:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="adress" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Category:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="category" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Status:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="status" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Email:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="email" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Phone:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="phone" class="form-control">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Date:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="date" name="date" class="form-control" value="1990-01-01">
                    </div>
                </div>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Biography:</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="description" class="form-control" style="padding-bottom: 100px;">
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

<div class="modal fade" id="exampleModalRemove" tabindex="-1" role="dialog" aria-labelledby="exampleModalRemove" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 400px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalRemovelabel">User Editor</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <form:form role="form" method = "POST" action="/remove-user">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-12">
                        <h5>Username</h5>
                    </div>
                    <div class="col-md-12">
                        <input type="text" name="username" class="form-control">
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Remove</button>
                </div>
            </form:form>
        </div>
    </div>
</div>

<div class="modal fade" id="exampleModalAddPost" tabindex="-1" role="dialog" aria-labelledby="exampleModalAddPostLabel" aria-hidden="true">
    <div class="modal-dialog" role="document" style="max-width: 1200px;">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalAddPostLabel">Add Post</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <%--@elvariable id="Post" type="com.mkyong.web.PostsEntity"--%>
            <form:form role="form" method = "POST" action="/addPost" modelAttribute="Post">
                <c:set var="now" value="<%=new java.util.Date()%>" />
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <input type="hidden" name="enabled" value="1"/>
                <input type="hidden" name="author" value="${pageContext.request.userPrincipal.name}"/>

                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Title</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="title" class="form-control">
                    </div>
                </div>

                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Description</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="description" class="form-control">
                    </div>
                </div>

                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Image URL</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="text" name="image" class="form-control">
                    </div>
                </div>

                <div class="row form-group" style="margin: 15px">
                    <div class="col-md-2">
                        <h5>Date</h5>
                    </div>
                    <div class="col-md-10">
                        <input type="date" name="date" class="form-control">
                    </div>
                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Adds</button>
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

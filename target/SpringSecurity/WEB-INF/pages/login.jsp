<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page session="true"%>
<html>
<head>
	<link href="<c:url value="resources/css/bootstrap/bootstrap.css" />" rel="stylesheet">
	<%--<link href="<c:url value="resources/css/bootstrap/bootstrap.min.css" />" rel="stylesheet">--%>
	<link href="<c:url value="resources/js/bootstrap/bootstrap.js" />" rel="javascript">
	<link href="<c:url value="resources/js/jquery/jquery-3.2.1.slim.min.js" />" rel="javascript">

		<title>Login Page</title>
		<link href="<c:url value="resources/css/login.css" />" rel="stylesheet">
</head>
<body onload='document.loginForm.username.focus();'>

	<%--<h1>Spring Security Login Form (Database Authentication)</h1>--%>

	<%--<div id="login-box">--%>

		<%--<h3>Login with Username and Password</h3>--%>

		<%--<c:if test="${not empty error}">--%>
			<%--<div class="error">${error}</div>--%>
		<%--</c:if>--%>
		<%--<c:if test="${not empty msg}">--%>
			<%--<div class="msg">${msg}</div>--%>
		<%--</c:if>--%>

		<%--<form name='loginForm'--%>
			<%--action="<c:url value='/login' />" method='POST'>--%>

			<%--<table>--%>
				<%--<tr>--%>
					<%--<td>User:</td>--%>
					<%--<td><input type='text' name='username'></td>--%>
				<%--</tr>--%>
				<%--<tr>--%>
					<%--<td>Password:</td>--%>
					<%--<td><input type='password' name='password' /></td>--%>
				<%--</tr>--%>
				<%--<tr>--%>
					<%--<td colspan='2'><input name="submit" type="submit"--%>
						<%--value="submit" /></td>--%>
				<%--</tr>--%>
			<%--</table>--%>

			<%--<input type="hidden" name="${_csrf.parameterName}"--%>
				<%--value="${_csrf.token}" />--%>

		<%--</form>--%>
	<%--</div>--%>

	<%--<c:if test="${not empty error}">--%>
	<%--<div class="error">${error}</div>--%>
	<%--</c:if>--%>
	<%--<c:if test="${not empty msg}">--%>
	<%--<div class="msg">${msg}</div>--%>
	<%--</c:if>--%>

	<form name='loginForm' action="<c:url value='/login' />" method='POST'>
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-centered table-bordered rounded">
					<div class="wrath-content-box"> <span>Sign In</span> </div>
					<div class="wrath-content-box">
						<div class="form-group">
							<input type="text" name="username" class="form-control" placeholder="Username" />
						</div>
						<div class="form-group">
							<input type="password" name="password" class="form-control" placeholder="password" />
						</div>
						<div class="form-group">
							<input type="hidden" name="${_csrf.parameterName}"
								   value="${_csrf.token}" />
						</div>
						<div class="row">
							<div class="col-sm-6">
								<div class="form-group text-right">
									<a class="btn btn-primary btn-sm form-control" href="/">Go Home</a>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group text-right">
									<input name="submit" type="submit" class="btn btn-danger btn-sm form-control" value="Sign In" />
								</div>
							</div>
						</div>
						<c:if test="${not empty error}">
							<div class="alert alert-danger">
								<strong>Error:</strong> ${error}
							</div>
						</c:if>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>
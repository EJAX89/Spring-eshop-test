<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div>
						<div>
							<h3>Prosím, přihlaste se</h3>
						</div>
						<c:if test="${not empty error}">
							<div class="alert alert-danger">
								 <p>Zadali jste špatné přihlašovací údaje. Zkuste to prosím znovu.</p>
								<br />
							</div>

						</c:if>
						<div>
							<form name='f'
								action="<c:url value="/j_spring_security_check"></c:url>"
								method="POST">
								<fieldset>
									<div class="form-group"><label>Jméno</label>
										<input class="form-control" placeholder="Jméno"
											name='j_username' type="text">
									</div>
									<div class="form-group"><label>Heslo</label>
										<input class="form-control" placeholder="Heslo"
											name='j_password' type="password" value="">
									</div>
									<input class="btn btn-lg btn-success btn-block" type="submit"
										value="Přihlásit">
								</fieldset>
								</table>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>
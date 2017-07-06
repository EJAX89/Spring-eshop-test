<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/skel.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style-xlarge.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/js/jquery.min.js" />"
	rel="stylesheet">
<link href="<c:url value="/resources/js/skel.min.js" />"
	rel="stylesheet">
<link href="<c:url value="/resources/js/skel-layers.min.js" />"
	rel="stylesheet">
<link href="<c:url value="/resources/js/init.js" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</script>
<title>PiPaOils - Zákazník</title>
</head>
<body class="landing">
	<!-- Header -->
	<header id="header" class="alt">
	<h1>
		<strong><a href="/pipaoils/">PiPaOils</a></strong>
	</h1>
	<p></p>
	<br>

	<nav id="nav">
	<ul>
		<li><a href="/pipaoils/">Domů</a></li>
		<li><a href="/pipaoils/products">Produkty</a></li>
		<li><a href="/pipaoils/cart/">Košík</a></li>
		<li></li>
	</ul>
	</nav> </header>

	<section id="produkt">
	<h2>Zákazník</h2>
	<p>Údaje o zákazníkovi</p>
	
	</section>

	<section id="three" class="wrapper style1">
	<div class="container 75%">
		<div class="row 200%">
			<div class="6u 12u$(medium)">
				<header class="major"> <form:form
					modelAttribute="order.orderDetails" class="form-horizontal">
					<fieldset>
						<legend>Dodací adresa</legend>
					</fieldset>
					
						<div class="form-group">
							<label class="control-label col-lg-2" for="jmeno">Jméno</label>
							<div class="col-lg-10">
								<form:input id="jmeno" path="jmeno" type="text"
									class="form:input-large" />
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-lg-2" for="prijmeni">Prijmeni</label>
							<div class="col-lg-10">
								<form:input id="prijmeni" path="prijmeni" type="text"
									class="form:input-large" />
							</div>
						</div>
<div class="form-group">
							<label class="control-label col-lg-2" for="ulice">Ulice</label>
							<div class="col-lg-10">
								<form:input id="ulice" path="orderAddress.ulice." type="text"
									class="form:input-large" />
							</div>
						</div>
				

						<div class="form-group">
							<label class="control-label col-lg-2" for="ulice">Číslo popisné</label>
							<div class="col-lg-10">
								<form:input id="ulice" path="orderAddress.cisloPopisne." type="text"
									class="form:input-large" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2" for="mesto">Město</label>
							<div class="col-lg-10">
								<form:input id="mesto" path="orderAddress.mesto" type="text"
									class="form:input-large" />
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2" for="psc">PSČ</label>
							<div class="col-lg-10">
								<form:input id="psc" path="orderAddress.psc" type="text"
									class="form:input-large" />
							</div>
						</div>

						
						

						<input type="hidden" name="_flowExecutionKey"
							value="${flowExecutionKey}" />

<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<button id="back" class="button special small" name="_eventId_zpetNaUdajeOZakaznikovi">Zpět</button>
						
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Pokračuj"  name="_eventId_adresaZjistena"/>
						<button id="btnCancel" class="button special small" name="_eventId_cancel">Zrušit</button>
					</div>
				</div>
						
				</form:form>
			</div>
			
			</header>
		</div>

	</div>
	</div>
	</section>
</body>
</html>
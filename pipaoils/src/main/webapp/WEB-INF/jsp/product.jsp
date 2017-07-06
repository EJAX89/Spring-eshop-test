<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" />
">
</script>
<script type="text/javascript"
	src="/pipaoils/resources/js/controllers.js" />
">
</script>
<title>PiPaOils</title>


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

	<!-- Banner -->
	<section id="produkt">
	<h2>PipaOils</h2>
	<p>
		Eshop a kamenný obchod s oleji a aditivy <br /> britské značky
		Millers Oils
	</p>
	<ul class="actions">
		<li><a href="#" class="button special big">Do obchodu</a></li>
	</ul>
	</section>
	
	<div class="container">
	<section id="three" class="wrapper style1" ng-app="cartApp">
		<header class="major"> 


		<h3>Název zboží: ${product.nazev}</h3>
		<p><strong>Popis zboží: ${product.popis}</strong></p>
		<p>
			<strong>Kód zboží : </strong><span class="label label-warning">${product.id}</span>
		</p>
		<p>Kategorie: 
		<c:forEach var="category" items="${categories}">
                    <c:choose><c:when test="${category.id==product.kategorie}">${category.jmeno}</c:when>
								
								</c:choose></c:forEach></th></p>
		<p>
			<strong>Množství na skladě </strong> : ${product.pocet}
		</p>
		<h4>Cena: ${product.cena} CZK</h4>


		</p>

		<p ng-controller="cartCtrl">
			<a href="#" class="button special small"
				ng-click="addToCart('${product.id}')"> Do košíku </a> <a
				href="<spring:url value="/cart" />" class="button special small">
				Zobrazit košík </a> <a href="<spring:url value="/products" />"
				class="button special small"> Zpět </a>

		</p>

		</header>
		<h4>Popis</h4>
		<hr>
		<c:choose>
		<c:when test="${empty product.popisDlouhy}">
				<p>Popis produktu je prázdný.</p>
			</c:when>
			<c:otherwise><p>${product.popisDlouhy}</p></c:otherwise>
		</c:choose>
	</div>




	</section>
	<jsp:include page="footer.jsp" />
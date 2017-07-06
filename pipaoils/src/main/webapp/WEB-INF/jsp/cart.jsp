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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js">"></script>
<script src="/pipaoils/resources/js/controllers.js" />

</script>
<title>PiPaOils - Nákupní košík</title>
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
				<h2>PipaOils</h2>
				<p>Váš nákupní vozík</p>
				<ul class="actions">
					<li><a href="/pipaoils/products" class="button special big">Do obchodu</a></li>
				</ul>
			</section>
			
	<section class="container" ng-app="cartApp">
	<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
		
		<h1>Obsah Vašeho košíku.</h1>
		<p>&nbsp;</p>
		<table class="table table-hover">
			<tr>
				<th>Název produktu</th>
				<th>Cena za kus</th>
				<th>Množství</th>
				<th>Cena</th>
				<th>Action</th>
			</tr>
			<tr ng-repeat="item in cart.cartItems">
				<td>{{item.product.id}}-{{item.product.nazev}}</td>
				<td>{{item.product.cena}}</td>
				<td>{{item.mnozstvi}}</td>
				<td>{{item.cena}}</td>
				<td><a href="#" ng-click="removeFromCart(item.product.id)"><span></span>  Odstanit
				</a></td>
			</tr>
			<tr>
				<th></th>
				<th></th>
				<th>Cena celkem</th>
				<th>{{cart.grandTotal}}</th>
				<th></th>
			</tr>
		</table>
		<a class="button special small" ng-click="clearCart()"> <span
				class="glyphicon glyphicon-remove-sign"></span> Vymazat košík
			</a> <a href="<spring:url value="/platba?cartId=${cartId}"/>" class="button special small"> <span
				class="glyphicon-shopping-cart glyphicon"></span> Objednat
			</a>
		<a href="<spring:url value="/products" />" class="button special small">
			Pokračovat v nákupu
		</a>
	</div>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	<h2>Objednávka</h2>
	<p>Potvrzení objednávky</p>
		</section>

	<section id="three" class="wrapper style1">
	<div class="container">
		
			
				<header class="major special"> <form:form
					modelAttribute="order" class="form-horizontal">
					<h1>Faktura</h1>
					
					<div class="row">
					<address>
					<strong>Dodací adresa</strong><br>
					${order.orderDetails.jmeno}<br>
					${order.orderDetails.prijmeni}<br>
					${order.orderDetails.orderAddress.ulice} ${order.orderDetails.orderAddress.cisloPopisne}<br>
					${order.orderDetails.orderAddress.mesto}<br>
					${order.orderDetails.orderAddress.psc}<br>
					
					
					
					</address>
					</div>
					
					<div class="row">
					<address>
					<strong>Fakturační adresa</strong>
					${order.customer.jmeno}<br>
					${order.customer.prijmeni}<br>
					${order.customer.adresa.ulice} ${order.customer.adresa.cisloPopisne}<br>
					${order.customer.adresa.mesto} <br>
					${order.customer.adresa.psc}<br>
					
					
					<br>
					<abbr title="telefon"> tel:</abbr>
					${order.customer.telCislo}<br>
					<abbr title="email"> email:</abbr>
					${order.customer.email}
					</address>
					</div>
					
					<div class="row">
					
					<table class="table">
					<thead>
					<tr>
					<th>Produkt</th>
					<th>Množství</th>
					<th>Cena</th>
					<th>Celkem</th>
					</tr>
					</thead>
					<tbody>
					<c:forEach var="cartItem" items="${order.cart.cartItems}">
					<tr>
					<td> <em>${cartItem.value.product.nazev}</em> </td>
					<td> ${cartItem.value.mnozstvi}</td>
					<td> ${cartItem.value.product.cena} Kč</td>
					<td> ${cartItem.value.cena} Kč </td>
					</tr>
					</c:forEach>
					<tr>
					<td></td>
					<td></td>
					<td><h4>Cena celkem:</h4>
					</td>
					<td><h4><strong>${order.cart.grandTotal}</strong></h4>
					</td>
					</tr>
					</tbody>
					</table>
					
					</div>
					
						

					

						<button id="back" class="button special small" name="_eventId_zpetNaZjisteniAdresy">Zpět</button>
						
						<button type="submit" class="button small"
							name="_eventId_objednavkaPotvrzena">
							Potvrdit objednávku   <span class="glyphicon glyphicon-chevron-right"></span>
						</button>
						<button id="btnCancel" class="button special small" name="_eventId_cancel">Zrušit objednávku</button>
				
				
						
				</form:form>
			
			
			</header>
		

	</div>
	</div>
	</section>
</body>
</html>
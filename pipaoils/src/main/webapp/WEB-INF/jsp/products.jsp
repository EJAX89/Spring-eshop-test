
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<jsp:include page="header.jsp" />
		<!-- Banner -->
			<section id="produkt">
				<h2>PipaOils</h2>
				<p>Eshop a kamenný obchod s oleji a aditivy <br /> britské značky Millers Oils</p>
				
			</section>
			<!-- One -->
				<section id="one" class="wrapper style1">
					<div class="container 90%">
						<div class="row 200%">
							<div class="3u 12u$(medium)">
								<header class="major">
								<c:forEach items="${categories}" var="category">
									<a href="/pipaoils/products/${category.id}"><h4>${category.jmeno}</h4></a><br>
								
								
								</c:forEach>
								</header>
							</div>
<div class="8u$ 12u$(medium)">
<h4>Produkty</h4>
<p>&nbsp;</p>

		
							<div class="table-wrapper">
								<table class="alt">
								<c:choose>
			<c:when test="${empty products}">
				<p>Není zde žádný produkt.</p>
			</c:when>
			<c:otherwise>
			
									<thead>
										<tr>
											<th>Název</th>
											<th>Cena</th>
											<th ></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="product" items="${products}">
										<tr>
											<td>${product.nazev}</td>
											<td>${product.cena} Kč</td>
											<td><a href="<spring:url value="/products/product?id=${product.id}"/>" class="button special small"> Detaily </a></td>
										</tr>
										</c:forEach>
									</tbody>
									
								</c:otherwise>
								</c:choose>
								</table>
								
								</div>
								
		
	</div>

<section class="container">

</section>

				</div>
					</div>
				</section>

<jsp:include page="footer.jsp" />
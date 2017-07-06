
		<%@ page language="java" contentType="text/html; charset=UTF-8"
				    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<jsp:include page="header.jsp" />	
		
				<!-- Banner -->
			<section id="banner">
				<h2>PipaOils</h2>
				<p>Eshop a kamenný obchod s oleji a aditivy <br /> britské značky Millers Oils</p>
				<ul class="actions">
					<li><a href="/pipaoils/products" class="button special big">Do obchodu</a></li>
				</ul>
			</section>

			<!-- One -->
				<section id="one" class="wrapper style1">
					<div class="container 75%">
						<div class="row 200%">
							<div class="5u 12u$(medium)">
								<header class="major special">
									
									<h3>Vítejte na webu PiPaOils</h3>
									<h5>Eshop a kamenný obchod s oleji a mazivy</h5>
								</header>
							</div>
							<div class="7u$ 12u$(medium)">
								<p>Naší snahou je nejen poskytnout Vám kvalitní zboží za co nejpříznivější ceny, ale také zajistit profesionální přístup, vytvořit si dlouhodobý vztah se zákazníky a partnery a nadále jej rozvíjet.
								Klademe důraz na maximální uspokojení potřeb zákazníka a na kvalitu poskytovaných služeb ve všech oblastech působení firmy.</p>
								<p>&nbsp;</p>
								<p>Věříme v budoucí úspěšnou spolupráci a těšíme se na kontakt s Vámi.</p>
							</div>
						</div>
					</div>
				</section>

			<!-- Three -->
				<section id="three" class="wrapper style1">
					<div class="container">
						<header class="major special">
							<h3>Aktuality</h3>
							
						</header>
						<div class="feature-grid">
							<div class="feature">
								
								<div class="content">
								 <c:choose>
			<c:when test="${empty clanky}">
				<p>Není zde žádný produkt.</p>
			</c:when>
				<c:otherwise>
				<c:forEach var="clanek" items="${clanky}">
									<header>
									<h4>${clanek.nadpis}</h4>
										
										
									</header>
									<p>${clanek.abstrakt } &nbsp;&nbsp;&nbsp;&nbsp;<a href="clanek/${clanek.id}">Celý článek -----></a></p><hr></c:forEach></c:otherwise>
								</c:choose></div>
							</div>
							
							</div>
						</div>
					
				</section>

			<!-- Four -->
				<section id="four" class="wrapper style3 special">
					<div class="container">
						<header class="major">
							
						</header>
						<ul class="actions">
						
						</ul>
					</div>
				</section>

		
			<jsp:include page="footer.jsp" />
			
</html>
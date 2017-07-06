<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:include page="header.jsp" />	

<!-- Banner -->
			<section id="banner">
				<h2>PipaOils</h2>
				
				<h2>Litujeme, ale produkt s tímto id neexistuje ${invalidProductId}</h2>
				<p>${url}</p>
				<p>${exception}</p>
				
				
				<ul class="actions">
					<li><a href="/pipaoils/products" class="button special big">Zpět</a></li>
				</ul>
			</section>
			
			

<jsp:include page="footer.jsp" />

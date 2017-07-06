<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="header.jsp" />

<div class="col-sm-9 col-md-10 main">

	<!--toggle sidebar button-->
	<p class="visible-xs">
		<button type="button" class="btn btn-primary btn-xs"
			data-toggle="offcanvas">
			<i class="glyphicon glyphicon-chevron-left"></i>
		</button>
	</p>

	<h1 class="page-header">Přehled</h1>

	<div class="row placeholders">
		<div class="col-xs-6 col-sm-3 placeholder text-center">
			
			<h4>Produkty</h4>
			
					
				<span class="text-muted"><c:forEach var="produkt" items='${produkty}'>
					<c:set var="count2" value="${count2 + 1}" scope="page"/>
					
						
					
				</c:forEach>Máte celkem <c:out value="${count2}" /> produktů</span><br>
				<span class="text-muted"><c:forEach var="product" items='${products}'>
				<c:set var="count" value="${count + 1}" scope="page"/>
					
						
					
				</c:forEach>Z toho je <c:out value="${count}" /> aktivních</span>
		</div>
		<div class="col-xs-6 col-sm-3 placeholder text-center">
			
			<h4>Kategorie</h4>
				
				<span class="text-muted"><c:forEach var="categorie" items='${categories}'>
					<c:set var="count1" value="${count1 + 1}" scope="page"/>
					
						
					
				</c:forEach>Máte celkem <c:out value="${count1}" /> kategorií</span><br>
				<span class="text-muted"><c:forEach var="kategory" items='${kategorie}'>
				<c:set var="count3" value="${count3 + 1}" scope="page"/>
					
						
					
				</c:forEach>Z toho je <c:out value="${count3}" /> aktivních </span>
		</div>
		<div class="col-xs-6 col-sm-3 placeholder text-center">
			
			<h4>Články</h4>
			<span class="text-muted"><c:forEach var="clanek" items='${clanky}'>
					<c:set var="count4" value="${count4 + 1}" scope="page"/>
					
						
					
				</c:forEach>Máte celkem <c:out value="${count4}" /> článků</span><br>
				<span class="text-muted"><c:forEach var="clanekaktivni" items='${clankyaktivni}'>
				<c:set var="count5" value="${count5 + 1}" scope="page"/>
					
						
					
				</c:forEach>Z toho je <c:out value="${count5}" /> aktivních </span>
		</div>
		<div class="col-xs-6 col-sm-3 placeholder text-center">
			
			<h4>Objednávky</h4>
			<span class="text-muted">Something else</span>
		</div>
	</div>

	<hr>

	<h2 class="sub-header">Section title</h2>
	<div class="table-responsive">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>Header</th>
					<th>Header</th>
					<th>Header</th>
					<th>Header</th>
				</tr>
			</thead>

		</table>
	</div>


</div>
<!--/row-->
</div>
</div>
<!--/.container-->

</body>
</html>
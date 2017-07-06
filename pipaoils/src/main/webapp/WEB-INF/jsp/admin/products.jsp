<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="header.jsp" />
        
        <div class="col-sm-9 col-md-10 main">
          
        <h2 class="sub-header">Produkty</h2>
      <a href="product/add" class="btn btn-primary"> Přidat produkt </a>
        <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Id produktu</th>
                  <th>Název</th>
                  <th>Množství skladem</th>
                   <th>Kategorie</th>
                  <th>Cena</th>
                  <th>Aktivní</th>
                  <th>Editace</th>
                </tr>
              </thead>
                <c:choose>
			<c:when test="${empty products}">
				<p>Není zde žádný produkt.</p>
			</c:when>
				<c:otherwise>
				<c:forEach var="product" items="${products}">
				
              <tbody>
               <tr>
                  <th>${product.id}</th>
                  <th>${product.nazev}</th>
                  <th>${product.pocet}</th>
                 
                   <th>
                    <c:forEach var="category" items="${categories}">
                    <c:choose><c:when test="${category.id==product.kategorie}">${category.jmeno}</c:when>
								
								</c:choose></c:forEach></th>
                    
                  <th>${product.cena} Kč</th>
                  <th>${product.aktivni}</th>
                  <th>
                  <c:choose><c:when test="${product.aktivni}"><form action="${pageContext.request.contextPath}/admin/product/deaktivovat" method="post">
									<input type="hidden" name="productId" value="${product.id}" />
									
									<input type="submit" value="Deaktivovat" class="btn btn-primary" />
								</form></c:when>
								
								<c:otherwise><form action="${pageContext.request.contextPath}/admin/product/aktivovat" method="post">
									<input type="hidden" name="productId" value="${product.id}" />
									
									<input type="submit" value="Aktivovat" class="btn btn-primary"/></form></c:otherwise></c:choose>
                 <form action="${pageContext.request.contextPath}/admin/product/smazat" method="post" >
									<input type="hidden" name="productId" value="${product.id}" />
									
									<input type="submit" value="Smazat"  class="btn btn-primary"/>
								</form>
									
									
								<a href="${pageContext.request.contextPath}/admin/product/editovat/${product.id}" class="btn btn-primary">Editovat</a></th>
                </tr>
                </tbody>
                </c:forEach>
               
                </c:otherwise>
              </c:choose>
            </table>
          </div>
                      
           
          
      </div><!--/row-->
	</div>
</div><!--/.container-->

</body>
</html>
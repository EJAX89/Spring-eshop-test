<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="header.jsp" />
        
        <div class="col-sm-9 col-md-10 main">
          
        <h2 class="sub-header">Články</h2>
          <a href="clanek/add" class="btn btn-primary"> Přidat článek </a>
        <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Id článku</th>
                  <th>Nadpis</th>
                  <th>Abstrakt</th>
                  
                 
                 <th>Viditelné</th>
                  <th>Editace</th>
                </tr>
              </thead>
                <c:choose>
			<c:when test="${empty clanky}">
				<p>Není zde žádný produkt.</p>
			</c:when>
				<c:otherwise>
				<c:forEach var="clanek" items="${clanky}">
              <tbody>
               <tr>
                  <th>${clanek.id}</th>
                  <th>${clanek.nadpis}</th>
                   <th>${clanek.abstrakt}</th>
               
                <th>${clanek.aktivni}</th>
                  
                  <th>
                  <c:choose><c:when test="${clanek.aktivni}"><form action="${pageContext.request.contextPath}/admin/clanek/deaktivuj" method="post">
									<input type="hidden" name="clanekId" value="${clanek.id}" />
									
									<input type="submit" value="Deaktivovat" class="btn btn-primary" />
								</form></c:when>
								
								<c:otherwise><form action="${pageContext.request.contextPath}/admin/clanek/aktivuj" method="post">
									<input type="hidden" name="clanekId" value="${clanek.id}" />
									
									<input type="submit" value="Aktivovat" class="btn btn-primary"/></form></c:otherwise></c:choose>
                 <form action="${pageContext.request.contextPath}/admin/clanek/smaz" method="post" >
									<input type="hidden" name="clanekId" value="${clanek.id}" />
									
									<input type="submit" value="Smazat"  class="btn btn-primary"/>
								</form>
									
									
								<a href="${pageContext.request.contextPath}/admin/clanek/editovat/${clanek.id}" class="btn btn-primary">Editovat</a></th>
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
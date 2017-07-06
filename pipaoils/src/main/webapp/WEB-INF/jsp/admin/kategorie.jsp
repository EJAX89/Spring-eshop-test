<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="header.jsp" />
        
        <div class="col-sm-9 col-md-10 main">
          
        <h2 class="sub-header">Kategorie</h2>
      <a href="kategorie/add" class="btn btn-primary"> Přidat kategorie </a>
        <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Id kategorie</th>
                  <th>Název</th>
                  <th>Zkratka</th>
                  
                 
                  <th>Aktivní</th>
                  <th>Editace</th>
                </tr>
              </thead>
                <c:choose>
			<c:when test="${empty categories}">
				<p>Není zde žádná kategorie.</p>
			</c:when>
				<c:otherwise>
				<c:forEach var="category" items="${categories}">
              <tbody>
               <tr>
                  <th>${category.id}</th>
                  <th>${category.jmeno}</th>
                  <th>${category.zkratka}</th>
                
                  <th>${category.aktivni}</th>
                    <th>
                  <c:choose><c:when test="${category.aktivni}"><form action="${pageContext.request.contextPath}/admin/kategorie/deaktivuj" method="post">
									<input type="hidden" name="kategoryId" value="${category.id}" />
									
									<input type="submit" value="Deaktivovat" class="btn btn-primary" />
								</form></c:when>
								
								<c:otherwise><form action="${pageContext.request.contextPath}/admin/kategorie/aktivuj" method="post">
									<input type="hidden" name="kategoryId" value="${category.id}" />
									
									<input type="submit" value="Aktivovat" class="btn btn-primary"/></form></c:otherwise></c:choose>
                 <form action="${pageContext.request.contextPath}/admin/kategorie/smaz" method="post" >
									<input type="hidden" name="kategoryId" value="${category.id}" />
									
									<input type="submit" value="Smazat"  class="btn btn-primary"/>
								</form>
									
									
								<a href="${pageContext.request.contextPath}/admin/kategorie/editovat/${category.id}" class="btn btn-primary">Editovat</a></th>
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
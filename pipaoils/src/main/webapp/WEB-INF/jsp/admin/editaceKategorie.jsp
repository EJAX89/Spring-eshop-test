<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="header.jsp" />
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
		  <h1 class="page-header">
          Editace kategorie
           
          </h1>

      
          
         <section class="container">
		<form:form commandName="category" method="post" class="form-horizontal"  enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/updateKategorie">	
			<fieldset>
			
					<div class="form-group">
					<label class="control-label col-lg-2" for="id">Id</label>
					<div class="col-lg-10">
						<form:input id="id" path="id" type="text" class="form:input-large"/>
						<form:errors path="id" cssClass="text-danger"/>
					</div>
				</div>
					
		
					<div class="form-group">
					<label class="control-label col-lg-2" for="jmeno">Název</label>
					<div class="col-lg-10">
						<form:input id="jmeno" path="jmeno" type="text" class="form:input-large"/>
						<form:errors path="jmeno" cssClass="text-danger"/>
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2" for="zkratka">Zkratka</label>
					<div class="col-lg-10">
						<div class="form:input-prepend">
							<form:input id="zkratka" path="zkratka" type="text" class="form:input-large"/>
							<form:errors path="zkratka" cssClass="text-danger"/>
						</div>
					</div>
				</div>

				

				<div class="form-group">
					<label class="control-label col-lg-2" for="aktivni">Aktivní</label>
					<div class="col-lg-10">
						<form:radiobutton path="aktivni" value="true" />Aktivní 
						<form:radiobutton path="aktivni" value="false" />Neaktivní 
						
					</div>
				</div>
				
				
					<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Změnit"/>
						<a href="/pipaoils/admin/kategorie" class="btn btn-primary">Zpět</a>
					
					</div>
				</div>
				
			
				
				


			
				
			</fieldset>
		</form:form>
	</section>

          
      </div><!--/row-->
	</div>
</div><!--/.container-->

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<jsp:include page="header.jsp" />
 <script type="text/javascript" src="/pipaoils/resources/tiny_mce/tiny_mce.js"></script>
			<script type="text/javascript">

			tinyMCE.init({	
			// General options	
			mode : "textareas",	
			theme : "advanced",	
			plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave",
	
			// Theme options	
			theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",	
			theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,search,replace,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",	
			theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",	
			theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,restoredraft",	
			theme_advanced_toolbar_location : "top",	
			theme_advanced_toolbar_align : "left",	
			theme_advanced_statusbar_location : "bottom",	
			theme_advanced_resizing : true,	
		
				
		
			// Drop lists for link/image/media/template dialogs	
			template_external_list_url : "lists/template_list.js",	
			external_link_list_url : "lists/link_list.js",	
			external_image_list_url : "lists/image_list.js",	
			media_external_list_url : "lists/media_list.js",
		
			// Style formats	
			style_formats : [	
				{title : 'Bold text', inline : 'b'},	
				{title : 'Red text', inline : 'span', styles : {color : '#ff0000'}},	
				{title : 'Red header', block : 'h1', styles : {color : '#ff0000'}},	
				{title : 'Example 1', inline : 'span', classes : 'example1'},	
				{title : 'Example 2', inline : 'span', classes : 'example2'},	
				{title : 'Table styles'},	
				{title : 'Table row 1', selector : 'tr', classes : 'tablerow1'}	
			],		
	
			// Replace values for the template plugin	
			template_replace_values : {	
				username : "Some User",	
				staffid : "991234"	
			}	
		});
		</script>
        
        <div class="col-sm-9 col-md-10 main">
          
          <!--toggle sidebar button-->
          <p class="visible-xs">
            <button type="button" class="btn btn-primary btn-xs" data-toggle="offcanvas"><i class="glyphicon glyphicon-chevron-left"></i></button>
          </p>
          
		  <h1 class="page-header">
           Editace článku
           
          </h1>

      
          
         <section class="container">
		<form:form commandName="clanek" method="post" class="form-horizontal"  enctype="multipart/form-data" action="${pageContext.request.contextPath}/admin/updateClanek">	
			<fieldset>
			
					<div class="form-group">
					<label class="control-label col-lg-2" for="id">Id</label>
					<div class="col-lg-10">
						<form:input id="id" path="id" type="text" class="form:input-large"/>
						<form:errors path="id" cssClass="text-danger"/>
					</div>
				</div>
					
		
					<div class="form-group">
					<label class="control-label col-lg-2" for="nadpis">Nadpis</label>
					<div class="col-lg-10">
						<form:input id="nadpis" path="nadpis" type="text" class="form:input-large"/>
						<form:errors path="nadpis" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="abstrakt">Abstrakt</label>
					<div class="col-lg-10">
						<form:textarea id="abstrakt" path="abstrakt" rows = "2"/>
						<form:errors path="abstrakt" cssClass="text-danger"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="text">Text</label>
					<div class="col-lg-10">
						<form:textarea id="text" path="text" rows = "6"/>
						<form:errors path="text" cssClass="text-danger"/>
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
						<a href="/pipaoils/admin/clanky" class="btn btn-primary">Zpět</a>
					
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
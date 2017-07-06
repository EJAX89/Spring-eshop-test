<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/styles.css" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-2">
<title>Administrace</title>
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">PiPaOils - administrace</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
       
            <li><a href="logout">Odhlásit se</a></li>
          </ul>
          
        </div>
      </div>
</nav>

<div class="container-fluid">
      
      <div class="row row-offcanvas row-offcanvas-left">
        
         <div class="col-sm-3 col-md-2 sidebar-offcanvas" id="sidebar" role="navigation">
           
            <ul class="nav nav-sidebar">
              <li class="active"><a href="/pipaoils/admin/index">Přehled</a></li>
            
             
            </ul>
            <ul class="nav nav-sidebar">
              <li><a href="/pipaoils/admin/products">Produkty</a></li>
              <li><a href="/pipaoils/admin/kategorie">Kategorie</a></li>
             
            </ul>
            <ul class="nav nav-sidebar">
              <li><a href="/pipaoils/admin/clanky">Články</a></li>
              
            </ul>
          
        </div><!--/span-->
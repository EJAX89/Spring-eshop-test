<%@page import="service.OrderService"%>
<%@page import="dao.OrderDAOImpl"%>
<%@page import="mailer.MailerAuthenticator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import="java.io.*,java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*,javax.activation.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/skel.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style-xlarge.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/js/jquery.min.js" />"
	rel="stylesheet">
<link href="<c:url value="/resources/js/skel.min.js" />"
	rel="stylesheet">
<link href="<c:url value="/resources/js/skel-layers.min.js" />"
	rel="stylesheet">
<link href="<c:url value="/resources/js/init.js" />" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</script>
<title>PiPaOils - Zákazník</title>
</head>
<body class="landing">

	<!-- Header -->
	<header id="header" class="alt">
	<h1>
		<strong><a href="/pipaoils/">PiPaOils</a></strong>
	</h1>
	<p></p>
	<br>

	<nav id="nav">
	<ul>
		<li><a href="/pipaoils/">Domů</a></li>
		<li><a href="/pipaoils/products">Produkty</a></li>
		<li><a href="/pipaoils/cart/">Košík</a></li>
		<li></li>
	</ul>
	</nav> </header>

	<section id="produkt">
	<h2>Zákazník</h2>
	<p>Údaje o zákazníkovi</p>
	
	</section>

	<section id="three" class="wrapper style1">
	<div class="container 75%">
		<div class="row 200%">
			<div class="6u 12u$(medium)">
				<header class="major"> 
				<h1> Děkujeme Vám za Váš nákup.</h1>
			</div>
			<div class="6u 12u$(medium)">
			<p>Objednávka bude doručena v nejbližším možném termínu.</p>
			<p>Číslo Vaší objednávky je ${order.orderId}</p>
	
				<%
				

   String result;
   // Recipient's email ID needs to be mentioned.
	MailerAuthenticator ma = new MailerAuthenticator("ales.jirasek@post.cz", "");
	
   // Sender's email ID needs to be mentioned
   String from = "ales.jirasek@post.cz";

   // Assuming you are sending email from localhost
   String host = "smtp.seznam.cz";

   // Get system properties object
   Properties properties = System.getProperties();

   // Setup mail server
   properties.setProperty("mail.smtp.host", host);
   
   properties.setProperty("mail.smtp.auth", "true");
   
  String to = "";
   // Get the default Session object.
   Session mailSession = Session.getInstance(properties, ma);

   try{
      // Create a default MimeMessage object.
      MimeMessage message = new MimeMessage(mailSession);
      // Set From: header field of the header.
      message.setFrom(new InternetAddress(from));
      // Set To: header field of the header.
      message.addRecipient(Message.RecipientType.TO,
                               new InternetAddress(to));
      // Set Subject: header field
      message.setSubject("Potvzení objednávky");
      // Now set the actual message
      message.setText("Vážený zákazníku, děkujeme Vám za Vaší objednávku. Bude vyřízena v nejbližším možném termínu.");
      // Send message
      Transport.send(message);
      result = "Uspesne odeslano....";
   }catch (MessagingException mex) {
      mex.printStackTrace();
      result = "Error: nelze odeslat....";
   }
  
%>
			</div>
			
			
			</header>
		</div>

	</div>
	</div>
	</section>
</body>
</html>
<%@page import="metier.MessageDor"%>
<%@page import="bd.Bd"%>
<%@page import="java.util.ArrayList"%>
<html>
	<head>
		<title> Livre d'or </title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>
				<!-- Header -->
			<header id="header">
				<a class="logo" href="index.html">M2 MIAGE IPM</a>
				<nav>
					<a href="#menu">Menu</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.html">Accueil</a></li>
					<li><a href="Saisie_message.html">Saisir un message</a></li>
					<li><a href="Livre_dor.jsp">Livre d'or</a></li>
					<li><a href="Supprimer_message.jsp">Supprimer message</a></li>
				</ul>
			</nav>
	<section id="cta" class="wrapper">
				<div class="inner">
				<h2> Livre d'or </h2>
		</div>
			</section>
		<table border=1>
		<tr>
		<td>
		<b> Texte </b>
		</td>
		<td>
		<b> Pseudo </b>
		</td>
		</tr>
                <% 
                Bd mybd = new Bd();
                ArrayList<MessageDor> messLivreDor = mybd.lireLivreDor();
                    for(MessageDor messOr : messLivreDor){
                        out.print("<tr><td>" + messOr.getMessage() + "</td><td>" + messOr.getPseudo() + "</td></tr>");
                    }
                %>
		</table>
		
				<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			
	</body>
	</br>
	<p> <a HREF ="index.html"> Retour au menu principal  </p>
</html>
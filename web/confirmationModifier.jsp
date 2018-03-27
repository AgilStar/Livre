<%@page import="java.util.ArrayList"%>
<%@page import="ctrl.Enregistrer"%>
<%@page import="metier.MessageDor"%>
<%@page import="bd.Bd"%>

<html>
    <head>
        <title>Confirmation</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body class="is-preload">
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
					<li><a href="Supprimer_message.html">Supprimer message</a></li>
				</ul>
			</nav>
        <section id="cta" class="wrapper">
            <div class="inner">
                <h2> Confirmation </h2>
            </div>
        </section>
    <p>
    Le message a bien été modifié.
    <%
        session.invalidate();
            %>
    </p>
        
	</br>			
	 <p> <a HREF="Livre_dor.jsp"> Voir le livre d'or </a> &emsp; &emsp; &emsp; &emsp; <a HREF ="index.html"> Retour au menu principal  </a> </p>

				<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
    </body>
</html>
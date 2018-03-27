<%@page import="ctrl.Enregistrer"%>
<%@page import="metier.MessageDor"%>
<%@page import="bd.Bd"%>
<% String[] radiobutton = request.getParameterValues("radioButton"); 
String message = request.getParameter("newText"); 
session.setAttribute("newText", message);
if(radiobutton!=null){
session.setAttribute("radioButtonChecked",radiobutton[0]);
};

%>

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

        <form method="get" action="Modifier">

            <% if( radiobutton == null){
                out.print("<p> Vous n'avez pas sélectionné de messages ! </p>");
                out.print("<p> <a HREF =\"Modifier_message.jsp\"> Retour à la modification de messages ! </a></p>");
            }else{ 
            out.print("<p> Vous souhaitez modifier le message : "+radiobutton[0]+"</p><p> Avec pour nouveau Message : \" "+ message + " \".</p>");
            out.print("<button type=submit class=\"primary\"> Oui </button> &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; <button class=\"primary\" type=\"button\" onclick=\"window.location.replace('Modifier_message.jsp')\"> Non </button>");
            }%>
            </br>
            </br>
            <p> <a HREF ="index.html"> Retour au menu principal  </p>

            <!-- Scripts -->
            <script src="assets/js/jquery.min.js"></script>
            <script src="assets/js/browser.min.js"></script>
            <script src="assets/js/breakpoints.min.js"></script>
            <script src="assets/js/util.js"></script>
            <script src="assets/js/main.js"></script>
    </body>
</html>
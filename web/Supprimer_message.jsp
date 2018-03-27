<%@page import="metier.MessageDor"%>
<%@page import="bd.Bd"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<String> checkboxesChecked = (ArrayList<String>) session.getAttribute("checkboxescochees"); %>
<html>
    <head>
        <title> Supprimer Message </title>
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
                <li><a href="Supprimer_message.jsp">Supprimer message</a></li>
            </ul>
        </nav>

        <section id="cta" class="wrapper">
            <div class="inner">
                <h2> Supprimer un message </h2>
            </div>
        </section>
        </br>

        <form method="get" action="demandeSuppr.jsp">
            <table class="alt">
                <thead>
                    <tr>
                        <th>
                            <b> Choisir </b>
                        </th>
                        <th>
                            <b> Numéro </b>
                        </th>
                        <th>
                            <b> Texte </b>
                        </th>
                        <th>
                            <b> Pseudo </b>
                        </th>
                    </tr>
                <tbody>

                    <%
                        Bd mybd = new Bd();
                        ArrayList<MessageDor> messLivreDor = mybd.lireLivreDor();
                        for (MessageDor messOr : messLivreDor) {
                            if (checkboxesChecked == null) {
                                out.print("<tr><td> <input type=\"checkbox\" name=\"checkbox\" id=\"" + messOr.getId() + "\" value=\"" + messOr.getId() +
                                        "\"> <label for=\"" + messOr.getId() + "\"/> </td><td>" + messOr.getId() + "</td><td> "
                                        + messOr.getMessage() + "</td><td>" + messOr.getPseudo() + "</td></tr>");
                            } else if (checkboxesChecked.contains(messOr.getId().toString())) {
                                out.print("<tr><td> <input type=\"checkbox\" name=\"checkbox\" id=\"" + messOr.getId() + "\" value=\"" + messOr.getId() +
                                        "\" checked> <label for=\"" + messOr.getId() + "\"/> </td><td>" + messOr.getId() 
                                        + "</td><td> " + messOr.getMessage() +  "</td><td>" 
                                        + messOr.getPseudo() + "</td></tr>");
                            }else{
                              out.print("<tr><td> <input type=\"checkbox\" name=\"checkbox\" id=\"" + messOr.getId() + "\" value=\"" + messOr.getId() + 
                                      "\"> <label for=\"" + messOr.getId() + "\"/> </td><td>" + messOr.getId() + "</td><td> " + messOr.getMessage() + "</td><td>" 
                                      + messOr.getPseudo() + "</td></tr>");  
                            }
                        }
                        session.invalidate();
                    %>
                </tbody>
            </table>  
            <input type=submit class="primary" />	
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
<%@page import="metier.MessageDor"%>
<%@page import="bd.Bd"%>
<%@page import="java.util.ArrayList"%>
<% String text = null;
String radbuttchecked = null;  
    if (session.getAttribute("newText") != null) {
        text = session.getAttribute("newText").toString();
    }
    if(session.getAttribute("radioButtonChecked")!=null){
        radbuttchecked = session.getAttribute("radioButtonChecked").toString();
    }
%>
<html>
    <head>
        <title> Modifier un Message </title>
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
                <h2> Modifier un message </h2>
            </div>
        </section>
        </br>

        <form method="get" action="demandeModifier.jsp">
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
                            if (radbuttchecked == null) {
                                out.print("<tr><td> <input type=\"radio\" name=\"radioButton\" id=\"" + messOr.getId() + "\" value=\"" + messOr.getId() + "\"> <label for=\"" + messOr.getId() + "\"/> </td><td>" + messOr.getId() + "</td><td>" + messOr.getMessage() + "</td><td>" + messOr.getPseudo() + "</td></tr>");
                            } else if (radbuttchecked.equals(messOr.getId().toString())) {
                                out.print("<tr><td> <input type=\"radio\" name=\"radioButton\" id=\"" + messOr.getId() + "\" value=\"" + messOr.getId() + "\" checked> <label for=\"" + messOr.getId() + "\"/> </td><td>" + messOr.getId() + "</td><td>" + messOr.getMessage() + "</td><td>" + messOr.getPseudo() + "</td></tr>");
                            } else {
                                out.print("<tr><td> <input type=\"radio\" name=\"radioButton\" id=\"" + messOr.getId() + "\" value=\"" + messOr.getId() + "\"> <label for=\"" + messOr.getId() + "\"/> </td><td>" + messOr.getId() + "</td><td>" + messOr.getMessage() + "</td><td>" + messOr.getPseudo() + "</td></tr>");
                            }
                        }

                    %>
                </tbody>
            </table>  
            <p>
                <% if (text == null) {
                        out.print("Nouveau Message :  <input type=\"text\" name=\"newText\" size=\"25\" title=\"Veuillez écrire votre nouveau message\" required>");
                    } else {
                        out.print("Nouveau Message :  <input type=\"text\" name=\"newText\" size=\"25\" title=\"Veuillez écrire votre nouveau message\" value=\"" + text + "\" required>");
                    }
                    session.invalidate();
                %>
            </p>
            </br>           

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
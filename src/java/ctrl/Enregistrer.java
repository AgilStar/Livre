/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ctrl;

import bd.Bd;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 21201321
 */
@WebServlet(name = "Enregistrer", urlPatterns = {"/Enregistrer"})

public class Enregistrer extends HttpServlet {

    @Override
    public void doGet(HttpServletRequest requete, HttpServletResponse reponse) throws ServletException, IOException {
        String pseudo = requete.getParameter("Pseudo");
        String message = requete.getParameter("Message");
        new Bd().ecrireMessage(message, pseudo);
        RequestDispatcher rd = requete.getRequestDispatcher(("confirmationSaisie.jsp"));
        rd.forward(requete, reponse);
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ctrl;

import bd.Bd;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 21201321
 */
@WebServlet(name = "Supprimer", urlPatterns = {"/Supprimer"})
public class Supprimer extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest requete, HttpServletResponse reponse)
            throws ServletException, IOException {
        HttpSession session = requete.getSession(); 
        ArrayList<String> checkboxesChecked = (ArrayList<String>) session.getAttribute("checkboxescochees"); 
        new Bd().supprimerMessage(checkboxesChecked);
        RequestDispatcher rd = requete.getRequestDispatcher(("confirmationSuppr.jsp"));
        rd.forward(requete, reponse);
    }


}

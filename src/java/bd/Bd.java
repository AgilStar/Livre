/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import metier.MessageDor;

/**
 *
 * @author 21201321
 */
public class Bd {

    private Connection cx;
    /* Données de connexion */
    private String url = "jdbc:mysql://etu-web:3306/db_21201321";
    private String login = "21201321";
    private String password = "01721N";


    /* CONSTRUCTEUR */
    public Bd() {
        /* chargement du pilote pour la BD */
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            System.out.println("Erreur chargement driver : " + e.getMessage());
        }

        /*Ouverture de la connexion */
        try {
            this.cx = DriverManager.getConnection(url, login, password);
        } catch (SQLException e) {
            System.out.println("Erreur driver.getconnection : " + e.getMessage());
        }
    }

    public ArrayList lireLivreDor() {
        ArrayList<MessageDor> listMessage = new ArrayList<MessageDor>();
        try {
            Statement st = cx.createStatement();
            try {
                ResultSet rs = st.executeQuery("SELECT NumMsg,Pseudo,Texte FROM Message");
                System.out.println("------LIVRE D'OR------");
                while (rs.next()) {
                    listMessage.add(new MessageDor(rs.getInt("NumMsg"), rs.getString("Texte"), rs.getString("Pseudo")));
                    System.out.println(rs.getString("Pseudo") + " a marqué \" " + rs.getString("Texte") + " \".");
                }
                System.out.println("------------");
            } catch (SQLException e) {
                System.out.println("Problème de l'éxecution de la requête de lecture du livre d'or : " + e.getMessage());
            }
        } catch (SQLException e) {
            System.out.println("Problème de création de l'espace d'execution des requêtes pour lire le livre d'or: " + e.getMessage());
        }

        return listMessage;
    }

    public void ecrireMessage(String message, String pseudo) {
        try {
            Statement st = cx.createStatement();
            try {
                String requete = "INSERT INTO Message(Pseudo, Texte) values ('" + pseudo + "','" + message + "');";
                st.executeUpdate(requete);
            } catch (SQLException e) {
                System.out.println("Problème de l'éxecution de la requête d'insertion de nouveau message: " + e.getMessage());
            }
        } catch (SQLException e) {
            System.out.println("Problème de création de l'espace d'execution des requêtes d'insertion de nouveau message: " + e.getMessage());
        }
    }

    public void supprimerMessage(ArrayList<String> messages) {
        try {
            Statement st = cx.createStatement();
            try {
                String messageSuppr = "";
                for(String s : messages){
                    messageSuppr = messageSuppr+"'"+s+"' ,";
                }
                messageSuppr = messageSuppr.substring(0,messageSuppr.length()-2);
                String requete = "DELETE FROM Message WHERE Message.NumMsg IN ("+messageSuppr+");";
                System.out.println(requete);
                st.executeUpdate(requete);
            } catch (SQLException e) {
                System.out.println("Problème de l'éxecution de la requête de suppression de messages: " + e.getMessage());
            }
        } catch (SQLException e) {
            System.out.println("Problème de mise en place de la requête de suppression de message: " + e.getMessage());
        }
    }
    
    public void modifierMessage (String id,String message){
       try {
            Statement st = cx.createStatement();
            try {

                String requete = "UPDATE Message SET Texte = '"+message+"' WHERE NumMsg='"+id+"';";
                System.out.println(requete);
                st.executeUpdate(requete);
            } catch (SQLException e) {
                System.out.println("Problème de l'éxecution de la requête de modification de messages: " + e.getMessage());
            }
        } catch (SQLException e) {
            System.out.println("Problème de mise en place de la requête de modification de message: " + e.getMessage());
        } 
    }
    public static void main(String[] args) {
        //Bd mybd = new Bd();
        
        ArrayList<String> st = new ArrayList<String>();
        st.add("1");
        st.add("2");
        st.add("3");
        
        String messageSuppr = "";
            for(String s : st){
                    messageSuppr = messageSuppr+"'"+s+"', ";
                }
                messageSuppr = messageSuppr.substring(0,messageSuppr.length()-2);
                String requete = "DELETE FROM Message WHERE Message.NumMsg IN ("+messageSuppr+");";
                System.out.println(requete);
     
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package metier;

/**
 *
 * @author 21201321
 */
public class MessageDor {
    private Integer id;
    private String message;
    private String pseudo;
    
    /* CONSTRUCTEUR */
    
    public MessageDor(Integer id, String message, String pseudo){
        this.id = id;
        this.message = message;
        this.pseudo = pseudo;
    }
    
    /**
     * Fonctionnalité de créer un message
     * @param message
     * @param pseudo 
     */
    /*
    public MessageDor(String message, String pseudo){
        this.message = message;
        this.pseudo = pseudo; 
    }
   */ 
    /* METHODES */
    
    /**
     * Get ID
     * @return ID
     */
    public Integer getId(){
        return id;
    }

    /**
     * get message
     * @return 
     */
    public String getMessage() {
        return message;
    }

    /**
     * set message
     * @param message 
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * get pseudo
     * @return 
     */
    public String getPseudo() {
        return pseudo;
    }

    /**
     * set pseudo
     * @param pseudo 
     */
    public void setPseudo(String pseudo) {
        this.pseudo = pseudo;
    }
    
    
    
}

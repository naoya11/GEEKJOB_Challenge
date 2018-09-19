/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author naoyagonda
 */
public class Word3 {
    public static void main(String[] args) {
        String word = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
        word.replace("I","い");
        word.replace("U","う");
         System.out.println(word.replace("U","う").replace("I","い"));
     
    }
}

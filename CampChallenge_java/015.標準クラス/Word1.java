
import java.io.UnsupportedEncodingException;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author naoyagonda
 */
public class Word1 {
     public static void main(String[] args) {
        String word = "ごんだなおや";
         System.out.println(word.length());
         try {
             // 文字の配列化 -- お菓子が配列化
             // String[] sweets = word.split(",", 0);
             System.out.print(word.getBytes("UTF-8").length);
         } catch (UnsupportedEncodingException ex) {
             Logger.getLogger(Word1.class.getName()).log(Level.SEVERE, null, ex);
         }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

/**
 *
 * @author naoyagonda
 */
public class Main2 {
       public static void main(String[] args) {
        // Humanクラスのインスタンス生成
        Class2 a = new Class2();
        a.setProfile("m", 10, "n");
        a.printHuman();
        a.clearProfile();
        a.printHuman();

    }
}

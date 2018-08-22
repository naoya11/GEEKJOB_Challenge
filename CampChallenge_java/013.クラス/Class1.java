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

class Class1 {
    // フィールドの宣言
    public String name = "";
    public int age = 0;
    public String adress="";
    // メソッドの宣言
    public void setProfile(String m,int a,String n){
        this.name=m;
        this.age=a;
        this.adress=n;
    }
    public void printHuman(){
        System.out.println(age);
    }
}

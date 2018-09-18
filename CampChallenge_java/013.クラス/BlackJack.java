/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jp.geekjob.game;

import java.io.*;

/**
 *
 * @author naoyagonda
 */
public class BlackJack {
      public static void main(String[] args) {
        // Humanクラスのインスタンス生成
    PrintWriter out = response.getWriter();
        
        // ディーラーとユーザーを初期化
        Dealer dealer = new Dealer();
        User user = new User();
        
        
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BlackJack</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>ブラックジャックスタート！</h1>");
            // deal!
            dealer.setCard(dealer.deal());
            user.setCard(dealer.deal());
            
            // どちらかがカードを必要とする限り実施
            while((dealer.checkSum() || user.checkSum())) {
                if (dealer.checkSum()) {
                    dealer.setCard(dealer.hit());
                }
                
                if (user.checkSum()) {
                    user.setCard(dealer.hit());
                }
                
                out.println("ディーラー："+dealer.myCards.toString()+"　ユーザー："+user.myCards.toString()+"<br>");
            }
            
            // 両方出揃ったら、結果表示
            Integer dealerTotal = dealer.open();
            Integer userTotal = user.open();
            
            out.println("ディーラー="+dealerTotal+" "+dealer.myCards.toString()+"　ユーザー="+userTotal+" "+user.myCards.toString()+"<br>");
            
            if (dealerTotal > 21) { dealerTotal = 0; }
            if (userTotal > 21) { userTotal = 0; }
            
            if (dealerTotal == userTotal) {
                if (dealerTotal == 21) {
                    if (dealer.myCards.size() > user.myCards.size()) {
                        out.println("ユーザー WIN<br>");
                    } else if (dealer.myCards.size() < user.myCards.size()) {
                        out.println("ユーザー LOSE<br>");
                    } else {
                        out.println("引き分け。。。<br>");
                    }
                } else {
                    out.println("引き分け。。。<br>");
                }
            } else if (userTotal > dealerTotal) {
                out.println("ユーザー WIN<br>");
            } else {
                out.println("ユーザー LOSE<br>");
            }
            
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
        }
       }  
 
}

    


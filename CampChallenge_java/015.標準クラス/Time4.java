


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author naoyagonda
 */
public class Time4 {
        public static void main(String[] args) {
        // 当日の日時で日付情報を作成
        Date d1 = new Date(2015,0,4,10,0,0);
        Date d2 = new Date(2015,11,31,23,59,59);
        long D1=d1.getTime();
        long D2=d2.getTime();
        System.out.println(D1-D2);
//        System.out.println(d1.getTime());
////        
//        Calendar c =Calendar.getInstance();
//        c.set(2016,10,4,10,0,0);
//        System.out.println(c.getTime());
//        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//        System.out.print(sdf.format(c.getTime()));
        
    }
}

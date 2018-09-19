
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import static java.lang.Thread.sleep;
import java.util.Date;
import java.util.logging.FileHandler;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author naoyagonda
 */
public class File3 {
        public static void main(String[] args) throws IOException {
        File fp = new File("log.txt");
        Date d = new Date();
    try { 

// FileWriter作成        
    FileWriter fw = new FileWriter(fp);
    fw.write(d.toString()+"start,");
    
    sleep(5000);
 
    fw.write(d.toString()+"end");
    fw.close();
    
     FileReader fr = new FileReader(fp);
    // BufferedReader作成
    BufferedReader br = new BufferedReader(fr);
    // 1行読み出し
    System.out.print(br.readLine());
    br.close();
    }
    catch(  IOException | InterruptedException e){
        // 書き込み
        // クローズ
    } 

    }
}

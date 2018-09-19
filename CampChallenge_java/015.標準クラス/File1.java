
import java.io.*;
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
public class File1 {
public static void main(String[] args) throws IOException {
        // ファイルオープン
        // ファイルオープン
        File fp = new File("profile.txt");

    // 書き込み
    try { // FileWriter作成
     FileWriter fw = new FileWriter(fp);
    fw.write("自己紹介");
    fw.close();
    }
    catch(IOException e){
        // 書き込み
        // クローズ
    }

    }
    
}

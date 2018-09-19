
import java.io.*;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author naoyagonda
 */
public class File2 {
    public static void main(String[] args) throws IOException {
        // ファイルオープン
        // ファイルオープン
        File fp = new File("profile.txt");
       
    // 書き込み
    try { // FileWriter作成
    FileReader fr = new FileReader(fp);
    // BufferedReader作成
    BufferedReader br = new BufferedReader(fr);
    // 1行読み出し
    System.out.print(br.readLine());
    br.close();
    }
    catch(IOException e){
        // 書き込み
        // クローズ
    }

    }
}

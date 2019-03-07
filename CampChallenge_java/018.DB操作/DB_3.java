
import static java.lang.System.out;
import java.sql.*;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author naoyagonda
 */
public class DB_3 {
       public static void main(String[] args) throws SQLException {
           Connection db_con=null;

        try {
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    db_con = DriverManager.getConnection("jdbc:mysql://localhost:8889/test","'root'@'localhost'","");
    if (db_con==null){
         out.print(1);
    }
    
        PreparedStatement db_st = null;
    //中略 
    db_st = db_con.prepareStatement("select * from profiles where profilesID= 1");
    //db_st.setInt(1, 30);
    ResultSet db_data = null;
    db_data = db_st.executeQuery();
    while(db_data.next()){
        out.println(db_data.getString("profilesID")+" "+db_data.getString("name")+" "+db_data.getString("tel")+" "+db_data.getString("age")+" "+db_data.getString("birthday"));
    }
        db_data.close();
    db_st.close();
    db_con.close();
    if (db_con != null){
  try {
    db_con.close();
  } catch (Exception e_con) {
      System.out.println(e_con.getMessage());
  }
}
        }catch(Exception e){
                             System.out.println(e);
       
        }

    }
}

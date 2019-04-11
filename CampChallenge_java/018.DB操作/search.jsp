<%-- 
    Document   : search
    Created on : 2019/04/05, 17:26:47
    Author     : naoyagonda
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         Connection db_con=null;
        try {
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    db_con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","'root'@'localhost'","");
    
        PreparedStatement db_st = null;
        
        // 受け取るパラメータの文字コード
    response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");
 
// テキストボックスの情報
    String n= request.getParameter("txtName");
//    n = new String(n.getBytes("ISO_8859_1"), "UTF-8");

    out.println(n+"<br>");
    //中略 
    db_st = db_con.prepareStatement("select * from profiles where name like ? ");
    db_st.setString(1,n+"%");
    ResultSet db_data = null;
    db_data = db_st.executeQuery();
    while(db_data.next()){
        out.print(db_data.getString("profilesID")+" "+db_data.getString("name")+" "+db_data.getString("tel")+" "+db_data.getString("age")+" "+db_data.getString("birthday")+"<br>");
    }
        db_data.close();
    db_st.close();
    db_con.close();
    if (db_con != null){
  try {
    db_con.close();
  } catch (Exception e_con) {
      out.println(e_con.getMessage());
  }
}
        }catch(Exception e){
                             out.println(e);
       
        }

            %>
    </body>
</html>

<%-- 
    Document   : query_string_input
    Created on : 2018/09/28, 13:35:47
    Author     : naoyagonda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="./query_string_output.jsp" method="post">
      <!-- formタグで括られた入力項目はこれら -->
      total: <input type="text" name="total"> 
      <br>
      count: <input type="text" name="count"> 
<!--      <input type="checkbox" name="chkTest">
      <br>-->
       <br>
      雑貨:<input type="radio" name="type" value="1">
      生鮮食品:<input type="radio" name="type" value="2">
      その他:<input type="radio" name="type" value="3">
      <br>
<!--      <input type="button" name="btnTest">
      <br>-->
      
<!--      <select name="cmbList"></select>
      <br>-->
      <input type="submit" name="btnSubmit">
      <br>
    </form>
    </body>
</html>

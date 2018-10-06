<%-- 
    Document   : index
    Created on : 2018/09/28, 15:35:55
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
            <%
// 受け取るパラメータの文字コード
request.setCharacterEncoding("UTF-8");
    HttpSession hs = request.getSession();
%>
        <form action="./form.jsp" method="post">
      <!-- formタグで括られた入力項目はこれら -->
      name: <input type="text" name="txtName" value="<%
        if (hs.getAttribute("name")!=null) {
              // hs.getAttribute("txtName");
               out.print(hs.getAttribute("name"));
}
                   %>"> 
      <br>
<!--      <input type="checkbox" name="chkTest">
      <br>-->
       
<%  if (  hs.getAttribute("sex")!=null&&hs.getAttribute("sex").equals("men")) {
              // hs.getAttribute("txtName");
              out.println("men:<input type=\"radio\" name=\"rdoSample\" value=\"men\" checked=\"on\">");
    }else {
            out.println("men:<input type=\"radio\" name=\"rdoSample\" value=\"men\">");
}
if (  hs.getAttribute("sex")!=null&&hs.getAttribute("sex").equals("women")) {
              // hs.getAttribute("txtName");
              out.println("women:<input type=\"radio\" name=\"rdoSample\" value=\"women\" checked=\"on\">");
    }else {
            out.println("women:<input type=\"radio\" name=\"rdoSample\" value=\"women\">");
}

           %>   
      <br>
<!--      <input type="button" name="btnTest">
      <br>-->
      
<!--      <select name="cmbList"></select>
      <br>-->
      hobby:<textarea name="mulText"> <% if(hs.getAttribute("sex")!=null){
          out.println(hs.getAttribute("hobby"));
           }%></textarea>
      <input type="submit" name="btnSubmit">
      <br>
    </form>
    </body>
</html>

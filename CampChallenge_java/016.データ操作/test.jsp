<%-- 
    Document   : test
    Created on : 2018/09/19, 18:42:12
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
// テキストボックスの情報
out.println(request.getParameter("txtName"));
// チェックボックスの情報
//out.print(request.getParameter("chkTest"));
// ラジオボタンの情報
out.println(request.getParameter("rdoSample"));
// ボタンの情報
//out.print(request.getParameter("btnTest"));
// コンボボックス（select）の情報
//out.print(request.getParameter("cmbList"));
// テキストエリアの情報
out.println(request.getParameter("mulText"));
%>
    </body>
</html>

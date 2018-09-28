<%-- 
    Document   : query_string_output
    Created on : 2018/09/28, 13:37:06
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
out.println(request.getParameter("total"));
// チェックボックスの情報
//out.print(request.getParameter("chkTest"));
// ラジオボタンの情報
out.println(request.getParameter("count"));
// ボタンの情報
//out.print(request.getParameter("btnTest"));
// コンボボックス（select）の情報
//out.print(request.getParameter("cmbList"));
// テキストエリアの情報
if(request.getParameter("type").equals("1")){
    out.println("雑貨");
}else if(request.getParameter("type").equals("2")){
    out.println("生鮮食品");
}else if(request.getParameter("type").equals("3")){
    out.println("その他");
}
int T=Integer.parseInt(request.getParameter("total"));
int C=Integer.parseInt(request.getParameter("count"));
    out.println("単価"+T/C);
    out.println("\n");
if(T<3000){
    out.println("ポイント"+T*0);
}else if(T>3000&&T<5000){
    out.println("ポイント"+T*0.04);
}else if(T>5000){
    out.println("ポイント"+T*0.05);
}
%>
    </body>
</html>

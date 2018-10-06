<%-- 
    Document   : form
    Created on : 2018/09/28, 15:16:04
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
//out.println(request.getParameter("txtName"));
// チェックボックスの情報
//out.print(request.getParameter("chkTest"));
// ラジオボタンの情報
//out.println(request.getParameter("rdoSample"));
// ボタンの情報
//out.print(request.getParameter("mulText"));
// コンボボックス（select）の情報
//out.print(request.getParameter("cmbList"));

    HttpSession hs = request.getSession();

    // セッションへ登録
    hs.setAttribute("name",request.getParameter("txtName"));
    hs.setAttribute("sex",request.getParameter("rdoSample"));
    hs.setAttribute("hobby",request.getParameter("mulText"));
    
    // セッションから情報を取得 -- 寿司
   if (hs.getAttribute("name")!=null) {
                out.println("最後のログインは、"+hs.getAttribute("sex"));
                
            }
out.println("<a href=\"index.jsp\">前のサーブレット呼び出し</a>");
%>

    </body>
</html>

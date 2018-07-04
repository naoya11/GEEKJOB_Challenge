<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
<%@ page import="java.util.HashMap" %>
<%
// 連想配列の作成
HashMap<String, String> prof =
            new HashMap<String, String>();
// 要素の追加
prof.put("1", "添田");
// 要素の更新 -- 添田を林に
prof.put("hello", "world");
// 要素の追加
prof.put("1", "添田");
// 要素の更新 -- 添田を林に
prof.put("soeda", "33");
// 要素の更新 -- 添田を林に
prof.put("20", "20");

%>	

</body>
</html>

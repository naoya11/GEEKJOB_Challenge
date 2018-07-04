<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	
<%@ page import="java.util.ArrayList" %>
<%
// 配列の作成
ArrayList<String> data = new ArrayList<String>();

// 要素の追加
data.add("10");
data.add("100");
data.add("soeda");
data.add("hayashi");
data.add("-20");
data.add("118");
data.add("END");

data.set(2, "33") ;
// 要素の削除 -- 要素の削除は、番号でも実値でも可
for(int i=0;i<7;i++){
out.println(data.get(i)+"<br>");
}
%>
</body>
</html>

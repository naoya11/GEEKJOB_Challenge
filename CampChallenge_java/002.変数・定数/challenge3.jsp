<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>
	
       <% 
        //　----------ここから下へソースコードを書く------------
     final int BASE = 100;
int num = 5;

// 足し算
int tasu = BASE + num;
out.print(tasu+"<br>");

// 引き算
int hiku = BASE - num;
out.print(hiku+"<br>");
// 掛け算
int kake = BASE * num;
out.print(kake+"<br>");
// 割り算
int wari = BASE / num;
out.print(wari+"<br>");

// 剰余算
int amari = BASE % 3;
out.print(amari+"<br>");
//　-------------------------ここまで------------------------------
        %>
</body>
</html>

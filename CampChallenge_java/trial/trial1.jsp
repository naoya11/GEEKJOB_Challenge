<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ナベアツ課題</title>
</head>
<body>
	<h1>ナベアツ課題</h1>
       <% 
        //　----------ここから下へソースコードを書く------------
        for(int k=1;k<=20;k++){
        if(k%3==0){
        out.println(k+"アホになる");
        }else{
        out.println(k);
        }
        out.print("<br>");  
        }


        
       //　-------------------------ここまで------------------------------
        %>
</body>
</html>

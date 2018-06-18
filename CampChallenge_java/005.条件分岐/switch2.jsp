<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

</head>
<body>

       <% 
        //　----------ここから下Aへソースコードを書く------------
        char k='A';
        switch(k){
            case 'A':
             out.println("英語");
             break;
            case 'あ':
             out.println("日本語");
             break;
            default:
             break;
        }

        
       //　-------------------------ここまで------------------------------
        %>
</body>
</html>

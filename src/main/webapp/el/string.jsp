<%@ page contentType="text/html; charset=UTF-8" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
  *{ font-family: Malgun Gothic; font-size: 26px;}
</style>
</head>
<body>
<DIV class='container'>
<DIV class='content'>
  <%
  String fname = "winter.jpg";
  request.setAttribute("fname", fname);
  %>
  
  ${fname.length() }<br>
  ${fname.substring(0, 3) }<br>
  ${fname.toUpperCase() }<br>
  ${fname.equals("winter.jpg") }<br>
  ${fname == null ? "이름이 없습니다.":fname }<br>
</DIV> <!-- content END -->
</DIV> <!-- container END -->
</body>
</html>
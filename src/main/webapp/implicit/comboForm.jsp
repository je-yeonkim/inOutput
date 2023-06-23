<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>comboForm</title>
</head>
<body>
  <form action="comboResult.jsp" method="post">
   <h2>검색 엔진을 선택하세요.</h2>
   <select name="search">
   <option value="http://www.google.com">구글</option>
   <option value="http://www.naver.com">네이버</option>
   <option value="http://www.daum.net">다음</option>
   <option value="ex5_A.jsp">ex5</option>
   </select>
    <input type="submit" value="확인">
  </form>

</body>
</html>
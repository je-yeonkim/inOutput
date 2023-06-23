<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bmiResult</title>
</head>
<body>
   <%
     request.setCharacterEncoding("utf-8");
     String name = request.getParameter("name");
     String height = request.getParameter("height");
     String weight = request.getParameter("weight");
     
     int h = Integer.parseInt(height);
     int w = Integer.parseInt(weight);
 	//결과를 출력 할 때 비만도 값 100을 기준으로 100 미만이면 저체중, 
	//100 이상 110 미만은 정상, 110 이상 120 미만 과체중, 120 이상 130 미만 비만, 
	//130 이상은 고도비만으로 출력 하시오.
	
	//비만도 계산 식 : 비만도(%) = 현재 체중 / 표준 체중 * 100
	double norm=(h -100) * 0.9;
 	double over = w/norm * 100;
 	String result= "";
 	if (over >= 130)
 		result = "고도비만";
	else if (over >= 120)
		result = "비만";
	else if (over >= 110)
		result = "과체중";
	else if (over >= 100)
		result = "정상";
	else
		result = "저체중";
	String formattedNumber = String.format("%.2f", over);
	out.print(name + "님의 비만도는" + formattedNumber + "%로 "+ result+"입니다");
   %>

</body>
</html>
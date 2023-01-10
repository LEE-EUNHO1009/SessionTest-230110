<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<%
		session.invalidate();  //session에 모든 정보를 다 날려버림(삭제)->로그아웃
		
		//String sessionId = (String) session.getAttribute("memberId");
		
		if(request.isRequestedSessionIdValid() == false){
			out.print("로그아웃 성공");
		} else{
			out.print("로그아웃 실패");
		}
	
	%>
	<br>
	<a href="SessionTest.jsp">로그인 확인 테스트</a>
</body>
</html>
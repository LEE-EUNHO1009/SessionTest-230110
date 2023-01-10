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
		
		String sessionId = (String) session.getAttribute("memberId");
		
		if(sessionId == null){
			out.print("로그아웃 성공");
		} else{
			out.print("로그아웃 실패");
		}
	
	%>
</body>
</html>
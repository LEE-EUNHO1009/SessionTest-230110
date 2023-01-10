<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 중 테스트</title>
</head>
<body>
	<%
		String sessionId = (String) session.getAttribute("memberId");
	//(String)은 형변환 한 것임, 뒤쪽에 toString();써줘도 되지만 null값일 때 문제가 됨. 형변환하는 게 나음
		//System.out.println(sessionId); //콘솔에서 값 나옴
		
		if(sessionId == null){
			out.print("로그인 중 아님");
		}else{
			out.print(sessionId+"님 로그인 중입니다.");
		}
	%>
	<br>
	<a href="Logout.jsp">로그아웃</a>
	<br>
	<a href="Logout2.jsp">로그아웃2</a>
</body>
</html>
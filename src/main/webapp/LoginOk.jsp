<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
	
		if((mid.equals("tiger")) && (mpw.equals("12345"))){ //참이면 로그인 성공/ 객체와 일반값을 ...?
			//로그인 시킨다(로그인 상태로 전환)는 것은 세션에 아이디를 저장한다는 의미와 동일
			session.setAttribute("memberId", mid);
			session.setAttribute("memberPw", mpw);
			
			out.print(mid+"님 로그인 성공하셨습니다.(세션 생성 성공)");
		} else{
			out.print("로그인에 실패하셨습니다.(세션 생성 실패)");
		}
	%>
	<br>
	<a href="SessionTest.jsp">로그인 확인 페이지로 가기</a>
	
</body>
</html>
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
		String sessionId = (String) session.getAttribute("memberId"); //sessionId 곳에 문자열로 저장/ (String)은 형변환한것임
	//(String)은 형변환 한 것임, 뒤쪽에 toString();써줘도 되지만 null값일 때 문제가 됨. 형변환하는 게 나음
		//System.out.println(sessionId); //콘솔에서 값 나옴
		
		if(sessionId == null){
			out.print("로그인 중 아님");
		}else{
			out.print(sessionId+"님 로그인 중입니다.");
		}
		int sTime = session.getMaxInactiveInterval(); //session의 유효시간 가져오기(단위:초)
		System.out.println("기본값"+sTime);
		session.setMaxInactiveInterval(3600); //세션의 유효시간 1시간으로 변경(3600초=1시간)
		int sTime2 = session.getMaxInactiveInterval(); //세션 유효시간 가져오기(단위:초)
		System.out.println("변경 후"+sTime2);
		
	%>
	<br>
	<a href="Logout.jsp">로그아웃</a>
	<br>
	<a href="Logout2.jsp">로그아웃2</a>
</body>
</html>
<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃 확인</title>
</head>
<body>
	<% 
		Enumeration enumeration = session.getAttributeNames();
		//세션의 이름들만 가져와서 저장
	
		while(enumeration.hasMoreElements()){
			String sessionName = (String) enumeration.nextElement();
			//값은 안오고 session에 올려놓은 세션의 이름 가져오기
			//System.out.println(sessionName);
			String sessionValue = (String) session.getAttribute(sessionName);
			//System.out.println(sessionValue);
			
			if(sessionValue.equals("tiger")){
				session.removeAttribute(sessionName);
			}
		}
		String sessionId = (String) session.getAttribute("memberId");
		
		System.out.println(sessionId);
		
		
	%>
	<a href="SessionTest.jsp">세션 테스트</a>
</body>
</html>
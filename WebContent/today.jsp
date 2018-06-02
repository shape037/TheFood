<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
	//한글을 위해서..
	request.setCharacterEncoding("UTF-8");
	
	// main.jsp 에서 넘어오는 데이터를 받기
	// 클라이언트에서 요청 한 데이터
	String [] menu = request.getParameterValues("menu"); //여러개의 값을 배열로 받을 수 있다.
	
	// 확인용
	System.out.println("배열의 길이: " + menu.length);
	
	// 넘어오는 데이터들이 가변적이기 때문에
	// for 문을 써야 되겠네...
	// for(int i=0; ...)
	for(String m : menu){
		System.out.println(m);
	}
	
	// 넘어오는 데이터들을 배열로 넘어오는데?? 
	//하든 ArrayList에 담든
	// 어떻게든 해서 랜덤으로 오늘의 메뉴를 출력해보기
	
	
	// 배열에 이미 담겨 있음 ArrayList 값 옮겨 담기
	ArrayList<String> menuList = new ArrayList<>();
	for(String m : menu){
		menuList.add(m);
	}
	
	//Random 을 사용 할 수 있게 선언 하고
	Random rnd = new Random();
	// 랜덤 갯수 설정해서 하나의 번호를 뽑기
	int rndNum = rnd.nextInt(menuList.size());
	// 그 번호를 index(rndNum)로 하여 안에 있는 문자열을 출력
	
	// 확인용(나중에 지워야 됨)
	System.out.println("랜덤으로 나온 숫자: " + rndNum);
	// 리스트에 담겨 잇는 데이터 중에 하나(rndNum값에 따라)를 출력
	//out.println(menuList.get(rndNum));
	// 리스트에 담겨 잇는 데이터 중에 하나(rndNum값에 따라)를 변수에 담음
	String selMenu = menuList.get(rndNum);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>오늘 뭐 먹지</title>
</head>
<body>
<h1>오늘의 메뉴</h1>
<%=selMenu%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메인 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

	function add_item(){
		// pre_set 에 있는 내용을 읽어와서 처리..
		var div = document.createElement('div');
		div.innerHTML = document.getElementById('pre_set').innerHTML;
		document.getElementById('field').appendChild(div);
	}
	
	var menuNum = 0;
	function appendText() {
		menuNum++;
	    var txt1 = '메뉴 ' + menuNum + ': <input type="text" name="menu" value="맘터"><br>';       //안이"" 사용중일때 ''로 묶어주면 하나의 문자열로 인식 
	    $("#field").append(txt1);     // Append new elements
	}

</script>
</head>
<body onload="appendText()">
<!-- 메인 페이지로 넘어 왔어요! -->
<h1> The Food </h1>

메뉴 추가 버튼을 눌러서<br>
메뉴를 추가 하세요.<br>
<button onclick="appendText()">메뉴 추가</button>
<!-- <input type="button" value=" 메뉴 추가 " onclick="add_item()"><br> -->
<form action="today.jsp" method="post">
<!-- 	<div id="pre_set">
		메뉴 : <input type="text" name="menu" value="맘터"><br> 

	</div> -->
	<div id="field"></div>
	<br>

	<input type="submit" value=" 오늘 머 먹지? "><br>
</form>
<a href="test.jsp">테스트 페이지</a>

</body>
</html>
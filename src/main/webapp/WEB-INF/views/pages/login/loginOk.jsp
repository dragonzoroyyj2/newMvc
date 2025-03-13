<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
<title>로그인</title>
</head>
<body>
<h1>로그인 OK</h1>


<P>  go</P>

<form action = "/logout" method = 'post'>
<input type = "hidden" name = "${_csrf.parameterName }" value = "${_csrf.token }"/>
<button>로그아웃</button>
</form>


<input type="button" id="board" name="board" onclick="fnBoard();" value="board"/>

<script>

	function fnBoard(){
		
		location.href = "/pages/main/mainBoard";
	}

</script>
</body>
</html>
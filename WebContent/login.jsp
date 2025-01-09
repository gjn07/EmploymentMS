<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>敬老院用工管理系统</title>
<link rel="stylesheet" href="logincss/css/supersized.css">
<link rel="stylesheet" href="logincss/css/login.css">
<script type="text/javascript" src="logincss/js/jquery-1.8.2.min.js"></script>
<script src="logincss/js/supersized.3.2.7.min.js"></script>
<script src="logincss/js/supersized-init.js"></script>
</head>
<body>
	<div id="div_login">
		<div id="div_form">
			<center style="font-size: 40px; margin-top: 10%; color: black;"">敬老院用工管理系统</center>
			<img src="logincss/img/logo.jpg">
			<form action="${pageContext.request.contextPath}/login" method="post">
				<table>
					<tr>
						<td class="td1"><img src="logincss/img/account.png" alt=""
							style="width: 16px; text-align: right">&nbsp</td>
						<td><input type="text" name="number" placeholder="账号"></td>
					</tr>
					<tr>
						<td class="td1"><img src="logincss/img/password.png"
							style="width: 16px; text-align: right">&nbsp</td>
						<td><input type="password" name="password" placeholder="密码"></td>
					</tr>
					<tr style="background-color: inherit">
						<td colspan="2">
							<button id="input_submit" class="btn">登录</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
<script type="text/javascript">
    $(function(){
        var loginInfo = "${loginInfo}";
        if(null != loginInfo  && loginInfo != "")
            alert(loginInfo)
    });
</script>
</html>
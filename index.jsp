<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table cellpadding="10" cellspacing="0" border="0" width="100%">

<tr><td colspan="2" align="center"><jsp:include page="banner.jsp" /></td></tr>
<tr><td colspan="2" align="center"> <jsp:include page="menu.jsp" /></td></tr>
<tr><td width="60%">

	<jsp:include page="slide.jsp" />


</td><td>
		<div align="center">
		
				<form method="post" action="ValidateLogin.jsp">
				
					<table cellpadding="10" cellspacing="0" border="0" width="90%%" bgcolor="lightyellow">
					
						<tr bgcolor="blue"><th colspan="4"><font color="white">LOGIN HERE</font></th></tr>
						<tr><td width="25%"></td><td>USER ID</td><td><input type="text" name="txt_uid"></td><td width="25%"></td></tr>
						<tr><td></td><td>PASSWORD</td><td><input type="password" name="txt_pass"></td><td></td></tr>
						<tr><td colspan="4" align="center"><input type="submit" value="Post to Server"></td></tr>
						
						<tr><td colspan="4" align="center"><a href="SignUp.jsp">User SignUp</a><hr/></td></tr>
						<tr><td colspan="4" align="center"><a href="Forget.jsp">Forget Password</a><hr/></td></tr>
					
					
					
					
					</table>
				
				
				</form>
		
		</div>
		
		</td></tr>
</table>




</body>
</html>
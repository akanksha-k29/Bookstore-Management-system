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
<tr>
	<td colspan="2" align="center">
	
		<%
				String[] categories={"Law","Medical","Engineering"};
		
		%>
	
	
			<form method="post" action="UploadServlet" enctype="multipart/form-data">
			
				<table cellpadding="10" cellspacing="0" border="0" width="70%" bgcolor="lightyellow">
				
					<tr bgcolor="green"><th colspan="4"><font color="white">BOOK ENTRY FORM</font></th></tr>
					
					<tr><td width="25%"></td><td>Book Category</td><td>
					
							<select name="cmb_category">
									<option value="" selected>-select category-</option>
								
									<%
									
											for(String value:categories)
												{
												
									%>
											<option value="<%=value%>"><%=value%></option>
									
									
									<%
												}
									
									%>
							</select>
					
					</td><td width="25%"></td></tr>
					<tr><td></td><td>Book Name</td><td><input type="text" name="txt_bname"></td><td></td></tr>
					<tr><td></td><td>Book Description</td><td>
					
							<textarea name="ta_description" rows="10" cols="40"></textarea>
					
					</td><td></td></tr>
					<tr><td></td><td>Cover Image</td><td><input type="file" name="file_upload"></td><td></td></tr>
					<tr><td></td><td>Author</td><td><input type="text" name="txt_author"></td><td></td></tr>
					
					<tr><td></td><td>Price</td><td><input type="text" name="txt_bprice"></td><td></td></tr>
					<tr><td colspan="4" align="center"><input type="submit" value="Post to Server"></td></tr>
					
					<tr><td colspan="4" align="center"><hr/></td></tr>
				</table>
			
			
			</form>
	
	
	
	
	
	
	
	</td>

</tr>
</table>




</body>
</html>
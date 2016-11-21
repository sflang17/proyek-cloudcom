<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="index.jsp" method="post">
	Item name : <input type='text' id='t1' name='t1' value="<%=request.getParameter("itemname1")  %>"><br>
	Item price : <input type='text' id='t2' name='t2' value="<%=request.getParameter("itemprice")  %>"><br>
	<input type="button" id="b1" name="b1" value="add"><br>
</form>
	
</body>
</html>
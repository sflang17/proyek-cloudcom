<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% ArrayList<String> itemName = new ArrayList<String>(); %>
<%
	itemName.add("buku");
	itemName.add("pensil");
%>
<% ArrayList<Integer> itemPrice = new ArrayList<Integer>(); %>
<%
	itemPrice.add(1000);
	itemPrice.add(2000);
%>
	Item : <input type='text' id='t1' name='t1'><br>
	Item price : <input type='text' id='t2' name='t2'><br>
	<input type="button" id="b1" name="b1" value="add"><br>
	<table>
	<tr>
		<th>Item Name</th>
		<th>Item Price</th>
	</tr>
	<% 
		for(int i=0;i<itemName.size();i++)
		{
	%>
			<tr>
			<form action="edit.jsp" method="post">
				<td><%=itemName.get(i) %> <input type="hidden" id="itemname1" value="<%=itemName.get(i) %>"><input type="hidden" id="itemname1" value="<%=i %>"></td>
				<td><%=itemPrice.get(i) %><input type="hidden" id="itemprice1" value="<%=itemPrice.get(i) %>"><input type="hidden" id="itemname1" value="<%=i%>"></td>
				<td><input type="submit" id="<%=i %>" name="<%=i %>" value="edit"></td>
				<td><input type="submit" id="<%=i %>" name="<%=i %>" value="delete"></td>
			</form>
			</tr>
	<%	}	%>
	
	</table>
</body>
</html>
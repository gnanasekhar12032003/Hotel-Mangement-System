<%@page import="com.jsp.hotelmanagement.Hotel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <% List<Hotel> hotel=(List<Hotel>)request.getAttribute("blockedhotels"); %>
    <table cellPadding="20px" border="1">
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Address</th>
    <th>MobileNumber</th>
    <th>Status</th>
    <th>Unlocked</th>
    
    <% for(Hotel h : hotel) { %>
    <tr>
       <td><%=  h.getId() %></td>
       <td><%= h.getName() %></td>
       <td><%=  h.getEmail() %></td>
       <td><%=  h.getAddress()  %></td>
       <td><%=  h.getMobilenumber() %></td>
       <td><%= h.getStatus() %></td>
       <td> <a href="Unblockedhotel?id=> <%= h.getId() %>">Unblocked</a></td>
       </tr>
       <% } %>
    
    </table>
    <a href="adminoptions.jsp">Back to menu</a> <br>       <a href="adminlogout">logout</a>
</body>
</html>
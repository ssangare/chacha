<%-- 
    Document   : logout
    Created on : Jan 2, 2014, 10:01:56 PM
    Author     : sanoussysangary
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="inputboxstyle.js"></script>
    </head>
	<body>
           <%
session.setAttribute("userName", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>


        </body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalTime" %>
<%
    int hour = LocalTime.now().getHour();
    String greeting = (hour < 12) ? "Good morning" : "Good afternoon";
%>
<html>
<head>
    <title>COMP367</title>
</head>
<body>
    <h1><%= greeting %>, Nathaniel, Welcome to COMP367</h1>
</body>
</html>
<%@ page import="java.util.List" %>
<%@ page import="com.codegym.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: nguye
  Date: 3/2/2022
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>$Title$</title>
</head>
<style>
    tr {
        padding: 0 20px;
    }
</style>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Thang", "28-04-1991", "Ha Noi", "image/1-removebg-preview.png"));

    customers.add(new Customer("Cuong", "13-01-2001", "Thai Binh", "image/1-removebg-preview.png"));
    customers.add(new Customer("Viet", "28-04-1991", "Ha Noi", "image/1-removebg-preview.png"));
    customers.add(new Customer("Tu", "28-04-1991", "Ha Noi", "image/1-removebg-preview.png"));
    customers.add(new Customer("Minh", "28-04-1991", "Ha Noi", "image/1-removebg-preview.png"));
    customers.add(new Customer("Binh", "28-04-1991", "Ha Noi", "image/1-removebg-preview.png"));
    pageContext.setAttribute("customers", customers);
%>
<table>
    <tr>
        <td colspan="4" style="text-align: center"><h1>Danh Sach Khach Hang</h1>
        </td>
    </tr>
    <div class="row">
        <tr>
            <td>Name</td>
            <td>Birth Day</td>
            <td>Address</td>
            <td>Image</td>
        </tr>
    </div>
    <div class="col">
        <c:forEach var="customers" items="${customers}">
            <tr>
                <td>${customers.name}</td>
                <td>${customers.birthDay}</td>
                <td>${customers.address}</td>
                <td><img src="${customers.img} " width="50px" height="50px" ></td>
            </tr>
        </c:forEach>
    </div>

</table>
</body>
</html>

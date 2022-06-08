<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mua đê</title>
</head>
<body>
<form  method="post">
    <input type="text" name="name" placeholder="Product name">
    <input type="hidden" name="action"   value="searchByName">
    <input type="submit" value="Search Product">
</form>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>


<H1>Product List</H1>
<h3>Product Id , Product , Product Price , Product Amount</h3>
<c:forEach var="item" items="${products}">
    <h3 style="background-color: #ffeba5;width:35%">${item.id}, ${item.name}, ${item.price}, ${item.quantity}
        <c:if test="${item.price > 200}">
            | Discount 10% per purchase |
        </c:if>
        <c:if test="${item.price < 200}">
            | Discount 20% per purchase |
        </c:if></h3>
</c:forEach>
</body>
</html>
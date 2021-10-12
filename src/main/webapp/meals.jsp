<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="mealToList" scope="request" type="java.util.List"/>

<html lang="ru">
<style>
    table {
        border-collapse: collapse;
        /*убираем пустые промежутки между ячейками*/
        border: 1px solid grey;
        /*устанавливаем для таблицы внешнюю границу серого цвета толщиной 1px*/
        max-width: 60%;
        width: 30%;
    }

    th, td {
        border: 1px solid grey;
    }

</style>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>

<div>
    <table>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
        </tr>
        <c:forEach items="${mealToList}" var="meal">
            <tr style="color: ${meal.excess ? 'Red' : 'Green'}">
                <td>${meal.dateTime}</td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
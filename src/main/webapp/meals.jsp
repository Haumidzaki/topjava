<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="mealToList" scope="request" type="java.util.List"/>

<html lang="ru">
<style>
    div {

    }
    table {
        border-collapse: collapse;
        /*убираем пустые промежутки между ячейками*/
        border: 1px solid grey;
        /*устанавливаем для таблицы внешнюю границу серого цвета толщиной 1px*/

    }

    th, td {
        align-items: center;
        border: 1px solid grey;
        padding: 5px 7px;
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
<c:forEach items="${mealToList}" var="meal" >

    <table>
        <tr>
            <th>Date</th>
            <th>Description</th>
            <th>Calories</th>
        </tr> <!--ряд с ячейками заголовков-->
        <tr>
            <td>${meal.dateTime}</td>
            <td>${meal.description}</td>
            <td>${meal.calories}</td>
        </tr> <!--ряд с ячейками тела таблицы-->
    </table>
</c:forEach>
    </div>
</body>
</html>
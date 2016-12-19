<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Meal list</title>
  <style>
    .normal {color: green}
    .exceeded {color: red}
  </style>
</head>
<body>
<h2><a href="index.html">Home</a></h2>
<h2>Meal list</h2>
<table border="1">
  <tr>
    <th>DateTime</th>
    <th>Description</th>
    <th>Calories</th>
  </tr>

  <c:forEach var="meal" items="${mealsList}">
    <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealWithExceed"/>
    <tr class="${meal.exceed ? 'exceeded' : 'normal'}">
      <td>
        <%=TimeUtil.toString(meal.getDateTime())%>
      </td>
      <td>${meal.description}</td>
      <td>${meal.calories}</td>
    </tr>
  </c:forEach>

</table>
</body>
</html>

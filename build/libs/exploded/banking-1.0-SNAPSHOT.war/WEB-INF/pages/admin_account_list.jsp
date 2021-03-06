<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <c:set var="context" value="${pageContext.request.contextPath}"/>
    <link type="text/css" rel="stylesheet" href="${context}/css/style_2.css"/>
    <title>Пользователи в системе</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>

<form method="POST">
    <table style="width:100%">
        <tr>
            <th>Логин</th>
            <%--<th>Пароль в MD5</th>--%>
            <th>Роль</th>
        </tr>
        <c:forEach items="${list}" var="item">
            <tr>
                <td><p><c:out value="${item.login}"></c:out></p></td>
                <td><p><c:out value="${item.role}"></c:out></p></td>
            </tr>
        </c:forEach>
    </table>
    <div>
        </br>
        <button class="button button1" type="returnBack" name="return" formaction="/web/admin_main"
                style="margin: auto; display: block">Вернуться на главную страницу
        </button>
    </div>
</form>
</body>
</html>
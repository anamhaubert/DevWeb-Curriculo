
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

</head>
<body>
<h1 style="text-align: center"><%= "Login" %> </h1>
<br/>

<form style="text-align: center;" action="<%= request.getContextPath()%>/login-servlet" method="POST">

    <label>Usuario:<input type="text" name="field_user" placeholder="usuario"></label><br>
    <label>Senha: <input type="password" name="field_password"></label><br>

    <% String erro  = (String) request.getAttribute("erro");
        if(erro != null){
    %>
    <label><%=erro%></label>
    <%}%>
    <br><button type="submit">Enviar</button>
</form>
</body>
</html>
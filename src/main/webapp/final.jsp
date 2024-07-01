<%@ page import="models.Login" %>
<%@ page import="services.LoginService" %><%--
  Created by IntelliJ IDEA.
  User: joao
  Date: 26/04/2024
  Time: 13:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% Login login = (Login) request.getSession().getAttribute("login");
  LoginService service = new LoginService();
  if(service.validarUsuario(login.getUser()) && service.validarSenha(login.getPassword())){
%>

<html>
<head>
  <title>Sucesso</title>


</head>
<body>
<a href="curriculo.jsp">Crie o Curriculo</a> <br>
<a href="<%=request.getContextPath()%>/logout-servlet">Logout</a>
</body>

<style>
  .logout-button {
    padding: 10px 20px;
    text-decoration: none;
    color: white;
    background-color: lightpink;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
  }
  .logout-button:hover {
    background-color: hotpink;
  }
</style>
</html>
<%}%>
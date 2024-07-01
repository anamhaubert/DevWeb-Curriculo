<%@ page import="models.Login" %>
<%@ page import="services.LoginService" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Curriculo JSP</title>
    <a href="<%=request.getContextPath()%>/logout-servlet">Logout</a>
    <% Login login = (Login) request.getSession().getAttribute("login");
        LoginService service = new LoginService();

        if(service.validarUsuario(login.getUser()) && service.validarSenha(login.getPassword())){
    %>

</head>


<body>
<h1 style="text-align: center"><%= "Formulário de Currículo" %> </h1>
<br/>

<form style="text-align: center;" action="<%= request.getContextPath()%>/curriculo-servlet" method="GET">

    <label>Nome: <input type="text" name="field_name" placeholder="Seu Nome Aqui"></label><br>
    <br> <label>Data de nascimento: <input type="date" name="field_date"></label> <br> <br>
    <label>Idioma Nativo: <select name="field_language">

        <option value="Português">Português</option>
        <option value="Espanhol">Espanhol</option>
        <option value="Inglês">Inglês</option>
    </select> </label>
    <br>
    <label>Java<input type="checkbox" name="field_checkboxOption" value="Java"></label>
    <label>JavaScript<input type="checkbox" name="field_checkboxOption" value="JavaScript"></label>
    <label>HTML<input type="checkbox" name="field_checkboxOption" value="HTML"></label>
    <label>CSS<input type="checkbox" name="field_checkboxOption" value="CSS"></label>
    <br> <br>
    <p><label for="field_text">Nos conte mais sobre você:</label></p>
    <textarea id="field_text" name="field_text" rows="4" cols="50"> </textarea>

    <br><button type="submit">Enviar</button>

</form>

</body>
<%}else{
    response.sendRedirect("index.jsp");
}%>
</html>

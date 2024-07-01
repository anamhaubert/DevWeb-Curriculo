<%@ page import="services.LoginService" %>
<%@ page import="models.Login" %><%--
  Created by IntelliJ IDEA.
  User: joao
  Date: 24/04/2024
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Login login = (Login) request.getSession().getAttribute("login");
    LoginService service = new LoginService();

    if(service.validarUsuario(login.getUser()) && service.validarSenha(login.getPassword())){
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seu currículo</title>
</head>

<body>





<main>

    <div class="container-conteudo">


        <div class="container-nome">
            <h1>Nome: <%=request.getAttribute("nomeCompleto")%></h1>

        </div>
        <ul>
            <li class="titulo-conteudo">
                <h2>Sobre mim:</h2>
                <h4>Idioma nativo:</h4><p><%= request.getAttribute("idioma")%></p>
                <h4>Informações adicionais:</h4> <p><%= request.getAttribute("texto")%></p>



            </li>

        </ul>
    </div>
    <div class="container-contato">
        <h2>Competências:</h2>
        <% for(String habilidade: (String[]) request.getAttribute("habilidades")){%>

        <p><%=habilidade%></p>

        <%}%>

    </div>

</main>


<style>

    body {
        font-family: 'Montserrat', sans-serif;
    }

    img {
        margin: 10px 0 0 0;
        position: relative;
        right: 8.4em;
        border: 1px solid;
        border-radius: 10px;
    }

    .container-conteudo {

        line-height: 1em;
        width: auto;
    }
    h2 {
        font-weight: bold;
        margin: 50px 0 0  0 ;
    }
    li p {
        line-height: 2em;
    }
    .container-nome{
        text-align: center;
        margin-top: 20px;
    }
    .container-contato {
        margin-left: 20px;
    }



</style>

</body>
</html>
<%}%>

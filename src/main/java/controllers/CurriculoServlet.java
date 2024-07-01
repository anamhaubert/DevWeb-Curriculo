package controllers;

import java.io.*;
import java.time.LocalDate;
import java.util.Arrays;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import models.Curriculo;
import services.CurriculoService;

@WebServlet(name = "curriculoServlet", value = "/curriculo-servlet")

public class CurriculoServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        CurriculoService service = new CurriculoService();
        Curriculo form = new Curriculo();

        try{
            String nome = service.validarTexto(request.getParameter("field_name"));
            form.setNome(nome);

        }catch (IllegalArgumentException e){
            request.setAttribute("erro-nome", e.getMessage());
            RequestDispatcher dispatcher = request.getRequestDispatcher("curriculo.jsp");
            dispatcher.forward(request, response);
        }


        String dataNascimento = request.getParameter("field_date");
        LocalDate data = LocalDate.parse(dataNascimento);
        form.setData(data);

        String texto = request.getParameter("field_text");
        form.setTexto(texto);
        String[] habilidade = request.getParameterValues("field_checkboxOption");
        form.setHabilidades(habilidade);
        String idioma = Arrays.toString(request.getParameterValues("field_language"));
        form.setIdioma(idioma);

        request.setAttribute("idioma", form.getIdioma());
        request.setAttribute("dataNascimento",form.getData());
        request.setAttribute("habilidades",form.getHabilidades());
        request.setAttribute("texto", form.getTexto());
        request.setAttribute("nomeCompleto",form.getNome());

        RequestDispatcher dispatcher = request.getRequestDispatcher("curriculoStyled.jsp");
        dispatcher.forward(request,response);

    }
}
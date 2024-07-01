package models;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

public class Curriculo {

    private LocalDate data;
    private String[] habilidades;
    private String nome;

    private String idioma;
    private String texto;


    @Override
    public int hashCode() {
        return Objects.hash(nome, texto, idioma);
    }

    @Override
    public String toString() {
        return  "Curriculo{" +
                "nome='" + nome + '\'' +
                ", data=" + data +
                ", idioma=" + idioma +
                ", habilidades=" + Arrays.toString(habilidades) +
                ", texto='" + texto + '\'' +
                '}';
    }


    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true;
        if (obj == null || getClass() != obj.getClass()) return false;
        Curriculo that = (Curriculo) obj;
        return Objects.equals(nome, that.nome) && Objects.equals(texto, that.texto);
    }

    public String[] getHabilidades() {
        return habilidades;
    }

    public void setHabilidades(String[] habilidades) {
        this.habilidades = habilidades;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public LocalDate getData() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }
}


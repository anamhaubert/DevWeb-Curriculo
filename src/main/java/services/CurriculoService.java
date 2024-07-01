package services;

public class CurriculoService {

    public String validarTexto(String texto) throws IllegalArgumentException{

        if(texto == null || texto.isEmpty()){
            throw new IllegalArgumentException("Valor inválido");
        }
        return  texto;
    }

}
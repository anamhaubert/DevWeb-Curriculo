package services;

public class LoginService extends CurriculoService{

    public boolean validarUsuario(String usuario){

        return usuario.equals("Laboratório");
    }


    public boolean validarSenha(String senha){
        return senha.equals("IFPR");
    }


}


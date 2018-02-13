package bll;

import dao.UserDao;
import dto.UserDto;

public class UserBll {
    String usuario;
    String senha;
    public UserBll(){
        usuario=null;
        senha=null;
    }
    public static boolean novoLogin(UserDto user) throws Exception{
        System.out.println("UserBll.novoLogin, usuario "+user.getUsuario()+", senha "+user.getSenha());
        if (validarDados(user)){
            System.out.println("UserBllValidarDados.if");
            UserDao userDao=new UserDao();
            if(userDao.novoLogin(user))
                return true;
        }
        return false;
    }
    
    private static boolean validarDados(UserDto user){
        System.out.println("UserBll.validarDados");
        if (user.getSenha().length()>0 && user.getUsuario().length()>0){
            System.out.println("return true");
            return true;
        }
        else{
            System.out.println("return false");
            return false;
        }
    }
}
package business;

import dao.UserDao;
import modelo.UserDto;

public class UserBll {
    String usuario;
    String senha;
    public UserBll(){
        usuario=null;
        senha=null;
    }
    public static boolean novoLogin(UserDto user) throws Exception{
        if (validarDados(user)){
            UserDao userDao=new UserDao();
            if(userDao.novoLogin(user))
                return true;
        }
        return false;
    }
    
    private static boolean validarDados(UserDto user){
        if (user.getSenha().length()<0 && user.getUsuario().length()<0){
            return true;
        }
        else
            return false;
    }
}

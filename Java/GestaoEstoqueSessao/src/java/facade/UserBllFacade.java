package facade;

import bll.UserBll;
import dao.UserDao;
import dto.UserDto;

public class UserBllFacade{
    
    public static boolean novoLogin(UserDto user) throws Exception{
        System.out.println("UserBllFacade");
        return UserBll.novoLogin(user);
    }
}
package dao;

import database.ConexaoBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import modelo.UserDto;

public class UserDao {
    
    private ConexaoBD database = null;
    private PreparedStatement ps;
    private Connection con;
    private ResultSet rs;
    
    public UserDao(){
        database = new ConexaoBD();
        database.carregarDriver();
    }
    
    public boolean novoLogin(UserDto user) throws Exception{
        try{
            database = new ConexaoBD();
            con = database.getConexao();
            
            con = database.getConexao();
            String sql="SELECT ID, USUARIO, SENHA FROM USUARIOS WHERE USUARIO=?";
            ps = con.prepareStatement(sql);
            ps = con.prepareStatement(sql);
            ps.setString(1, user.getUsuario());
            rs=ps.executeQuery();
            validarLogin(rs, user);
            
        }
        catch(Exception e){
            
        }
        return true;
    }
    
    private boolean validarLogin(ResultSet rs, UserDto user) throws SQLException{
        if (rs.getString("USUARIO").equals(user.getUsuario()) && rs.getString("SENHA").equals(user.getSenha()))
            return true;
        return false;
    }

}

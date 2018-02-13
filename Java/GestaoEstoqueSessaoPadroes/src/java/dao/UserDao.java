package dao;

import dao.database.ConexaoBD;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import dto.UserDto;

public class UserDao {
    
    private ConexaoBD conexaoBD=null;
    private PreparedStatement preparedStatement;
    private Connection conexao;
    private ResultSet resultSet;
    
    public UserDao(){}
    
    public boolean novoLogin(UserDto user) throws Exception{
        try{
            System.out.println("UserDao.getInstance");
            conexaoBD=ConexaoBD.getInstance();
            System.out.println("UserDao.novoLogin");
            conexaoBD.carregarDriver();
            System.out.println("UserBll.if");
            conexao = conexaoBD.iniciarConexao();
            String sql="SELECT USUARIO, SENHA FROM USUARIOS WHERE USUARIO=?";
            preparedStatement = conexao.prepareStatement(sql);
            preparedStatement.setString(1, user.getUsuario());
            System.out.println("ps.setString(1, "+user.getUsuario()+")");
            resultSet=preparedStatement.executeQuery();
            if(resultSet.next())
                return validarLogin(resultSet, user);
            else
                return false;
        }
        catch(Exception e){
            throw new Exception(e.getMessage());
        }
    }
    
    private boolean validarLogin(ResultSet resultSet, UserDto user) throws SQLException{
        System.out.println("validarLogin");
        System.out.println("resultSet USUARIO: "+resultSet.getString("USUARIO"));
        System.out.println("resultSet SENHA: "+resultSet.getString("SENHA"));
        if (resultSet.getString("USUARIO").equals(user.getUsuario()) && resultSet.getString("SENHA").equals(user.getSenha())){
            System.out.println("validarLogin return true");
            return true;
        }
        else{
            System.out.println("validarLogin return false");
            return false;
        }
    }
}
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexaoBD implements IDatabase{
    public static Connection conexao=null;
    
    public void carregarDrive(){
        System.out.println("Carregando drive");
        try{
            System.out.println("Try...");
            Class.forName(DRIVER);
        }
        catch(ClassNotFoundException cnfe){
            System.out.println("Driver JDBC não encontrado: "+cnfe.getMessage());
        }
    }
    
    public Connection getConexao(){
        try{
            conexao=DriverManager.getConnection(CAMINHOBANCO, USUARIO, SENHA);
            return conexao;
        }
        catch(SQLException sqle){
            System.out.println("Erro na conexao com o banco de dados: "+sqle.getMessage());
        }
        return null;
    }
    
    public void fecharConexao(){
        try{
            conexao.close();
        }
        catch(SQLException sqle){
            System.out.println("Erro ao fechar conexao com o banco de dados: "+sqle.getMessage());
        }
    }
}
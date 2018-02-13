package dao;

import dao.IDatabase;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Date;
import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.Locale;



public class ConexaoBD implements IDatabase {

    public static Connection conexao = null;
 
    public void carregarDriver(){
        System.out.println("CarregarDriver");
        try{   
            System.out.println("CarregarDriver Try");
            Class.forName(DRIVER);
        }
        catch(ClassNotFoundException cnfe){
            System.out.println( "Driver JDBC n�o encontrado : "+cnfe.getMessage());
	}	
   }
        
   public Connection iniciarConexao(){
       System.out.println("IniciarConexao");
            try{
                System.out.println("IniciarConexao Try");
                conexao = DriverManager.getConnection(CAMINHOBANCO, USUARIO, SENHA);
                System.out.println("IniciarConexao Try return conexao");
                return conexao;
            
            }
            catch(SQLException sqle){
		System.out.println( "Erro na conexão ao Banco de Dados : "+sqle.getMessage() );
            }
	    return null;
	}
	
	public void fecharConexao(){
            System.out.println("FecharConexao");
            try{
                    conexao.close();
	   }
	    catch(SQLException sqle){
		System.out.println( "Erro na conex�o ao Bando de Dados : "+sqle.getMessage() );
	    }	
        }
}
package dao.database;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class ConexaoBD implements IDatabase {
    
    private static ConexaoBD conexaoBD=null;
    public static Connection conexao=null;
    
    private ConexaoBD(){}
    
    public static ConexaoBD getInstance(){
        System.out.println("getInstance()");
        if(conexaoBD==null)
            conexaoBD=new ConexaoBD();
        return conexaoBD;
    }
 
    public void carregarDriver(){
        System.out.println("CarregarDriver");
        try{   
            System.out.println("CarregarDriver Try");
            Class.forName(DRIVER);
        }
        catch(ClassNotFoundException cnfe){
            System.out.println( "Driver JDBC não encontrado : "+cnfe.getMessage());
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


package dao;

import modelo.Time;
import database.*;
import java.util.*;
import java.sql.*;



 
public class TimeDAO {
    
   private ConexaoBD database = null;
   private PreparedStatement ps;
   private Connection con;
   private ResultSet rs;
    
    
    public TimeDAO()
    {  }
    
    /**
   * M�todo para adicionar os dados de ponto de coleta.
   *
   */
    public void adicionarTime(Time time) throws Exception
    {
         
        try
        {    //fazendo a conexao
             database = new ConexaoBD();
             con = database.getConexao();
             //preparando o comando de banco
             ps = con.prepareStatement("insert into times (codigo,nome,estado) values (?,?,?)");
             //atribuindo valores aos parametros
             ps.setInt(1, time.getCodigo());
             ps.setString(2, time.getNome());
             ps.setString(3, time.getEstado());
             
            //executando o comando de banco
             ps.executeUpdate();
             ps.close();
        }
        catch(Exception e)
        {    
            throw new Exception("Nao foi possivel adicionar um novo time. Time ja cadastrado ou houve algum erro. Erro de Sistema: " + e.getMessage());
        }
        finally
        {
            database.fecharConexao();
        }         
       
    }
    
   
   /**
   * Metodo para realizar consulta de ponto de coleta por codigo
   * @param codigo Recebe o codigo do ponto de coleta
   * @return Iterator Retorno de execucao da consulta realizada
 */ 
   public Time consultarTime(int codigo) throws Exception
    {
        Time time = new Time();
        try
        {
        
            String sql = null;

            database = new ConexaoBD();
            con = database.getConexao();
        
            
            sql = "select codigo,nome,estado from times where codigo = ?" ;
            
            ps = con.prepareStatement(sql);
            ps.setInt(1, codigo);


            rs = ps.executeQuery();
          if (rs.next()) {
            time.setCodigo(rs.getInt("codigo"));
            time.setNome(rs.getString("nome"));
            time.setEstado(rs.getString("estado"));
            }
            rs.close();
        }
        catch(Exception e)
        {    
            throw new Exception(e.getMessage());
        }
        finally
        {
            database.fecharConexao();
        }
        
        return time;
        
    }


      /**
   * Metodo para realizar consulta de ponto de coleta por codigo
   * @param codigo Recebe o codigo do ponto de coleta
 */
   public Iterator consultarTimes() throws Exception
    {


        ArrayList colecaoTimes = new ArrayList();
        try
        {

            String sql = null;

            database = new ConexaoBD();
            con = database.getConexao();


            sql = "select codigo,nome,estado from times" ;
            ps = con.prepareStatement(sql);

            rs = ps.executeQuery();
            while(rs.next())
            {
                Time time = new Time();
                time.setCodigo(rs.getInt("codigo"));
                time.setNome(rs.getString("nome"));
                time.setEstado(rs.getString("estado"));
                
                colecaoTimes.add(time);
            }

            rs.close();
        }
        catch(Exception e)
        {
            throw new Exception(e.getMessage());
        }
        finally
        {
            database.fecharConexao();
        }

        return colecaoTimes.iterator();

    }


    /**
   * M�todo para editar os dados de ponto de coleta.
   *
   */
    public void editarTime(Time time) throws Exception
    {
         
        try
        {
             database = new ConexaoBD();
             con = database.getConexao();
             
             
             
             ps = con.prepareStatement("update times set nome = ?, estado = ? where codigo = ?");
             
             
             ps.setString(1, time.getNome());
             ps.setString(2, time.getEstado());
             ps.setInt(3, time.getCodigo());
             ps.executeUpdate();
             ps.close();
        }
        catch(Exception e)
        {    
            throw new Exception(e.getMessage());
        }
        finally
        {
            database.fecharConexao();
        }         
       
    }
    
     /**
   * M�todo para excluir os dados de ponto de coleta.
   *
   */
    public void excluirTime(int codigo) throws Exception
    {
         
        try
        {
             database = new ConexaoBD();
             con = database.getConexao();
             
             ps = con.prepareStatement("delete from times where codigo = ? ");
                         
             ps.setInt(1, codigo);
             
             ps.executeUpdate();
             ps.close();
        }
        catch(Exception e)
        {    
            throw new Exception(e.getMessage());
        }
        finally
        {
            database.fecharConexao();
        }         
       
    }

   
    
}

package dao;

import dto.ProdutoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProdutoDAO {
    ConexaoBD database=null;
    PreparedStatement ps;
    Connection conexao;
    ResultSet rs;
    
    public ProdutoDAO(){}
    
    public void inserirProduto(ProdutoDTO produto) throws Exception{
        try{
            database=new ConexaoBD();
            System.out.println("Inserindo produto");
            database.carregarDrive();
            System.out.println("carregardrive");
            String sql="insert into MATERIAL (CODIGO,DESCRICAO,PRECO,OBSERVACAO) values (?,?,?,?)";
            //String sql="insert into MATERIAL2 (CODIGO,DESCRICAO) values(?,?)";
            conexao=database.getConexao();
            System.out.println("database.getconexao");
            ps=conexao.prepareStatement(sql);
            System.out.println("ps.preparestatement");
            ps.setInt(1, produto.getCodigo());
            System.out.println("ps1");
            ps.setString(2, produto.getDescricao());
            System.out.println("ps2");
            ps.setFloat(3, produto.getPreco());
            System.out.println("ps3");
            ps.setString(4, produto.getObservacao());
            System.out.println("ps4");
            ps.executeUpdate();
            System.out.println("ps.executeupdate");
            ps.close();
            System.out.println("psclose");
        }
        catch(Exception e){
            System.out.println("Nao foi possivel adicionar um novo produto. Produto ja cadastrado ou houve algum erro. Erro de Sistema: " + e.getMessage());
        }
        finally{
            database.fecharConexao();
        }
    }
}
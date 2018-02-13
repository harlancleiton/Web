package dao;

import dto.ProdutoDTO;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ProdutoDAO {
    ConexaoBD conexaoBD=null;
    PreparedStatement preparedStatement;
    Connection conexao;
    ResultSet resultSet;
    
    public ProdutoDAO(){}
    
    public void inserirProduto(ProdutoDTO produto) throws Exception{
        try{
            conexaoBD=new ConexaoBD();
            conexaoBD.carregarDriver();
            String sql="INSERT INTO MATERIAL (CODIGO,DESCRICAO,PRECO,OBSERVACAO) VALUES (?,?,?,?)";
            //String sql="insert into MATERIAL2 (CODIGO,DESCRICAO) values(?,?)";
            conexao=conexaoBD.iniciarConexao();
            preparedStatement=conexao.prepareStatement(sql);
            preparedStatement.setInt(1, produto.getCodigo());
            preparedStatement.setString(2, produto.getDescricao());
            preparedStatement.setFloat(3, produto.getPreco());
            preparedStatement.setString(4, produto.getObservacao());
            preparedStatement.executeUpdate();
            preparedStatement.close();
        }
        catch(Exception e){
            System.out.println("Nao foi possivel adicionar um novo produto. Produto ja cadastrado ou houve algum erro. Erro de Sistema: " + e.getMessage());
        }
        finally{
            conexaoBD.fecharConexao();
        }
    }
}
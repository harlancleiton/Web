 package dao;

import dao.database.ConexaoBD;
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
            conexaoBD=ConexaoBD.getInstance();
            conexaoBD.carregarDriver();
            conexao=conexaoBD.iniciarConexao();
            String sql="INSERT INTO PRODUTOS (ID,DESCRICAO,PRECO,OBSERVACAO) VALUES (?,?,?,?)";
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
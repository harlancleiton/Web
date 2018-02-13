package bll;

import dao.ProdutoDAO;
import dto.ProdutoDTO;

public class ProdutoBLL {
    private ProdutoDAO produtoDao;
    
    public ProdutoBLL(){
        produtoDao=new ProdutoDAO();
    }
    
    public void inserirProduto(ProdutoDTO novoProduto) throws Exception{
        validarDados(novoProduto);
        produtoDao.inserirProduto(novoProduto);
    }

    public void validarDados(ProdutoDTO novoProduto) throws Exception{
        System.out.println("Valindando dados");
        System.out.println(novoProduto.getCodigo()+", "+novoProduto.getDescricao()+", "+novoProduto.getPreco()+", "+novoProduto.getObservacao());
        if(novoProduto.getCodigo()==0)
            throw new Exception("O campo código é obrigatório.");
        if(novoProduto.getDescricao().equals(null)||novoProduto.getDescricao().equals(""))
            throw new Exception("O campo descrição é obrigatório.");
        if(novoProduto.getPreco()==0)
            throw new Exception("O campo preço é obrigatório.");
    }
    
    public ProdutoDAO getProdutoDao() {
        return produtoDao;
    }

    public void setProdutoDao(ProdutoDAO produtoDao) {
        this.produtoDao = produtoDao;
    }
}
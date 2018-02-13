package bean;

import bll.ProdutoBLL;
import dto.ProdutoDTO;
import java.util.HashSet;
import java.util.Iterator;

public class ProdutoBean {
    private int codigo=0;
    private String descricao="";
    private String observacao="";
    private float preco=0;
    private String acao="";
    
    public ProdutoBean(){}
    
    public Iterator execute() throws Exception{
        System.out.println("Executando Iterator");
        if(this.getAcao()!=null){
            System.out.println("Executando ação");
            ProdutoBLL produtoBll=new ProdutoBLL();
            if(this.getAcao().equals("Adicionar")){
                System.out.println("Executando ação adicionar");
                produtoBll.inserirProduto(this.novoProduto());
            }
        }
        return null;
    }
    
    public ProdutoDTO novoProduto(){
        System.out.println("Criando novo produto");
        ProdutoDTO produto=new ProdutoDTO();
        produto.setCodigo(this.getCodigo());
        produto.setDescricao(this.getDescricao());
        produto.setPreco(this.getPreco());
        produto.setObservacao(this.getObservacao());
        return produto;
    }
    
    public void limparDados(){
        System.out.println("Limpando campos");
        this.setAcao("");
        this.setCodigo(0);
        this.setDescricao("");
        this.setPreco(0);
        this.setObservacao("");
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getObservacao() {
        return observacao;
    }

    public void setObservacao(String observacao) {
        this.observacao = observacao;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public String getAcao() {
        return acao;
    }

    public void setAcao(String acao) {
        this.acao = acao;
    }
}

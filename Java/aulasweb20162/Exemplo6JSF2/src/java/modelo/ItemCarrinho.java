package modelo;
import java.io.Serializable;

public class ItemCarrinho implements Serializable {
    /** Identificador sequencial do item. */
    int itemId;
    /** Código do produto. */
    int produtoId;
    /** Nome do produto. */
    String nome;
    /** Caminho para a imagem do produto. */
    String imagem;
    /** Preço do produto. */
    float preco;
    /** Quantidade comprada do produto. */
    int quantidade;
    /**
    * Construtor de ItemCarrinho.
    *
    * @param item_id Identificador sequencial do item.
    * @param produto_id Código do produto.
    * @param nome Nome do produto.
    * @param imagem Caminho para a imagem do produto.
    * @param preco Preço do produto.
    * @param quantidade Preço do produto.
    */
    public ItemCarrinho(int item_id, int produto_id, String nome, String imagem, float preco, int quantidade) {
        this.itemId = item_id;
        this.produtoId = produto_id;
        this.nome = nome;
        this.imagem = imagem;
        this.preco = preco;
        this.quantidade = quantidade;
    }
    public boolean equals(Object o) {
        return ((this.getProdutoId()) == (((ItemCarrinho) o).getProdutoId()));
    }
    public int hashCode() {
        return 13 * getProdutoId();
    }
    public String toString() {
        return itemId + '\t' + produtoId + '\t' + nome + '\t' + quantidade;
    }
    public int getItemId() {
        return this.itemId;
    }
    public int getProdutoId() {
        return this.produtoId;
    }
    public String getNome() {
        return this.nome;
    }
    public float getPreco() {
        return this.preco;
    }
    public int getQuantidade() {
        return this.quantidade;
    }
    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }
    public String getImagem() {
        return this.imagem;
    }
    public void setImagem(String imagem) {
     this.imagem = imagem;
    }
    public float getPrecoItemTotal() {
        return (this.quantidade * getPreco());
    }
}
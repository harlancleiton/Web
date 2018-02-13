package bean;
import java.util.*;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.faces.el.ValueBinding;
import modelo.CarrinhoCompras;
import modelo.ItemCarrinho;
import modelo.Produto;

public class CarrinhoBean extends LojaVirtualBean {


    public String adicionarItem() throws Exception {
        System.out.println("\nInício adicionarItem() ");
        // Obtém o carrinho da sessão
        CarrinhoCompras carrinhoCompras = getCarrinhoCompras();
        // Obtém o produto da requisição
        Produto produto = getProduto();
        // adiciona item no carrinho
        carrinhoCompras.adicionaItem(new ItemCarrinho( -1, produto.getId(),
        produto.getNome(),
        produto.getImagem(),
        produto.getPreco(), 1));
        FacesContext.getCurrentInstance().addMessage("Adicionado com suceso", new FacesMessage("Adicionado o item com sucesso!"+produto.getNome()));
        System.out.println("Adicionou o item no carrinho.");
        return "carrinho";
    }
    public String remover() {
        // Obtém o carrinho da sessão
        CarrinhoCompras carrinhoCompras = getCarrinhoCompras();
        // Obtém o ItemCarrinho da requisição
        ItemCarrinho item = getItemCarrinho();
        // remove item, utilizando parametro "id" passado no request
        carrinhoCompras.removeItem( item.getProdutoId() );
        return null;

    }
    public String atualizar() {
        // Obtém o carrinho da sessão
        CarrinhoCompras carrinhoCompras = getCarrinhoCompras();
        // atualiza quantidades dos produtos, iterando sobre a lista
        // de produtos incluida no carrinho de compras. Eles estao
        // descritos no request como "quant[ID]=X"
        Iterator it = (carrinhoCompras.getItensCarrinho()).iterator();
        while (it.hasNext()) {
        ItemCarrinho item = (ItemCarrinho)it.next();
        System.out.println("Obteve o item do carrinho " + item);
        carrinhoCompras.atualizaQuantidade(item.getProdutoId(),
        item.getQuantidade());
        }
        return null;
    }
    public String limpar() {
        // Obtém o carrinho da sessão
        CarrinhoCompras carrinhoCompras = getCarrinhoCompras();
        carrinhoCompras.limparCarrinho();
        return null;
    }
    /**
    * <p>Retorna o <code>CarrinhoCompras</code> da sessão do ususário.
    */
    protected CarrinhoCompras getCarrinhoCompras() {
        FacesContext context = context();
        ValueBinding vb =
        context.getApplication().createValueBinding("#{carrinhoCompras}");
        CarrinhoCompras carrinhoCompras = (CarrinhoCompras)
        vb.getValue(context);
        System.out.println("Obteve o carrinho de compras da sessão " +
        carrinhoCompras);
        return carrinhoCompras;
    }
}
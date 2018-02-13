/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;
import java.util.*;
import javax.faces.context.FacesContext;
import javax.faces.context.ExternalContext;
import modelo.ItemCarrinho;
import dao.CatalogoDAO;
import dao.CatalogoDAO;
import modelo.Produto;


public class LojaVirtualBean {
    public List getProdutos() throws Exception {
    // instancia base de dados
    CatalogoDAO catalogoDAO = new CatalogoDAO();
    // recupera catalogo de produtos
    List catalogoProdutos = catalogoDAO.recuperarCatalogoProdutos();
        return catalogoProdutos;
    }
    /**
    * Obtém o produto da requisição.
    * @return Produto
    */
    public Produto getProduto() {
        Produto produto = (Produto)externalContext().getRequestMap().get("produto");
        return produto;
    }
    /**
    * Obtém o ItemCarrinho da requisição.
    * @return ItemCarrinho
    */
    public ItemCarrinho getItemCarrinho() {
        ItemCarrinho item =(ItemCarrinho)externalContext().getRequestMap().get("item");

        return item;
    }
    /**
    * <p>Retorna a instância de <code>FacesContext</code> referente à
    requisição
    * corrente.
    */
    protected FacesContext context() {
        FacesContext context = FacesContext.getCurrentInstance();
        return context;
    }
    protected ExternalContext externalContext() {
        return context().getExternalContext();
    }
}
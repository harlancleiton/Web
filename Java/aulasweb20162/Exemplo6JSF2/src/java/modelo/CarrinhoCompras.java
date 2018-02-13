/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package modelo;

import java.util.*;

public class CarrinhoCompras implements java.io.Serializable {
    /** Preço total dos itens do carrinho. */
    float precoTotal;
    /** Lista de itens do carrinho. */
    List itensCarrinho;
    /**
    * Construtor sem parâmetros da classe CarrinhoCompras.
    * Inicia a lista de itens e o preço total.
    */
    public CarrinhoCompras() {
    // inicializa carrinho
    itensCarrinho = new ArrayList();
    precoTotal = 0;
    }
    /**
    * Adiciona um item ao carrinho de compras.
    *
    * @param item Item do carrinho.
    */
    public void adicionaItem(ItemCarrinho item) {
        // verifica se item ja esta na lista
            int posItem = itensCarrinho.indexOf(item);
        if (posItem != -1) {
            // se ja contem, incrementa quantidade
            ItemCarrinho itemCarrinho = (ItemCarrinho)
            itensCarrinho.get(posItem);
            itemCarrinho.setQuantidade(itemCarrinho.getQuantidade() +
            item.getQuantidade());
        }
        else {
            // caso contrario, adiciona na lista
            itensCarrinho.add(item);
        }
        recalcularPrecoTotal();
    }
    /**
    * Atualiza a quantidade de um determinado item no carrinho.
    *
    * @param id Identificador do produto a atualizar.
    * @param quantidade Nova quantidade do produto no carrinho.
    */
    public void atualizaQuantidade(int id, int quantidade) {
        // encontra item a ser atualizado
        Iterator i = itensCarrinho.iterator();
        while (i.hasNext()) {
        ItemCarrinho item = (ItemCarrinho) i.next();
        if ( (item.getProdutoId()) == id) {
            // quando encontrado, atualiza sua quantidade
            item.setQuantidade(quantidade);
        }
        }
        recalcularPrecoTotal();
    }
    /**
    * Remove um item do carrinho de compras.
    *
    * @param id Identificador do produto.
    */
    public void removeItem(int id) {
        // encontra item a ser removido
        Iterator i = itensCarrinho.iterator();
        boolean removido = false;
        while ( (i.hasNext()) && (!removido)) {
        ItemCarrinho item = (ItemCarrinho) i.next();
        if ( (item.getProdutoId()) == id) {
            // quando encontrado, remove-o
            itensCarrinho.remove(item);
            removido = true;
        }
    }
    recalcularPrecoTotal();
    }
    /**
    * Remove todos os itens do Carrinho.
    */
    public void limparCarrinho() {
    itensCarrinho.clear();
    }
    /**
    * Retorna a quantidade de itens do carrinho.
    *
    * @return Quantidade de itens do carrinho.
    */
    public int getTamanho() {
        return (itensCarrinho.size());
    }
    /**
    * Retorna a coleção de itens do carrinho.
    *
    * @return Coleção de itens do carrinho.
    */
    public List getItensCarrinho() {
        return (this.itensCarrinho);
    }
    /**
    * Retorna o preço total dos itens do carrinho.
    *
    * @return Preço total dos itens do carrinho.
    */
    public float getPrecoTotal() {
        return (this.precoTotal);
    }
    /**
    * Recalcula o preço total dos itens do carrinho.
    */
    private void recalcularPrecoTotal() {
        precoTotal = 0;
        // recalcula preco total da compra
        Iterator i = itensCarrinho.iterator();
        while (i.hasNext())
        precoTotal += ( (ItemCarrinho) i.next()).getPrecoItemTotal();
    }
}
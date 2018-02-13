/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dao;

import java.sql.*;
import java.util.*;
import javax.naming.NamingException;
import modelo.Produto;

public class CatalogoDAO  {

    public List recuperarCatalogoProdutos() throws Exception {

        List catalogo = new ArrayList();
        try {
          //Simulando vindo de um banco de dados
            catalogo.add(new Produto(2, "Camisa","camisa.jpg",20));
            catalogo.add(new Produto(3, "PlayStation","playstation.jpg",20));

        }
        catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }
        return (catalogo);
    }

    private Map getCamposAlterados(Produto produtoVelho, Produto produtoNovo)
    {
        Map map = new LinkedHashMap();
        if (!produtoVelho.getNome().equals(produtoNovo.getNome()))
            map.put("nome", produtoNovo.getNome());
        if (!produtoVelho.getImagem().equals(produtoNovo.getImagem()))
            map.put("imagem", produtoNovo.getImagem());
        if (produtoVelho.getPreco() != produtoNovo.getPreco())
            map.put("preco", new Float(produtoNovo.getPreco()));
        return map;
    }


}
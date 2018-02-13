/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import java.util.List;

public class CatalogoBean extends LojaVirtualBean {
    public List getCatalogo() throws Exception {
        return getProdutos();
    }
}
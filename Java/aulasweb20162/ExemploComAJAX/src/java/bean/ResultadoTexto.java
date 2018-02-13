/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package bean;

import javax.enterprise.context.RequestScoped;
import javax.faces.bean.ManagedBean;

/**
 *
 * @author helder
 */

@ManagedBean(name="textoBean")
@RequestScoped

public class ResultadoTexto {


private String texto;


public String getTexto() {


return texto;


}

public void setTexto(String texto) {

this.texto = texto;


}

}

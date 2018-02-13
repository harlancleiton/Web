/*
 * TimeBean.java
 *
 * Created on 3 de Agosto de 2005, 00:06
 */

package bean;

import business.TimeBS;
import modelo.Time;
import java.util.*;

public class TimeBean {
    
    private int codigo = 0;
    private String nome = "";
    private String estado = "";
    private String acao      = "";
    private TimeBS timeBS;
    
    
    /** Creates a new instance of TimeBean */
    public TimeBean() {
    }

    private Time construirModelo()
    {
        Time time = new Time();
        time.setCodigo(this.codigo);
        time.setNome(this.nome);
        time.setEstado(this.estado);

        return time;
    }
    
    public void limparDados()
    {
        this.setAcao("");
        this.setCodigo(0);
        this.setEstado("");
        this.setNome("");
       
    }
    
    public Iterator execute() throws Exception
    {
        
         timeBS = new TimeBS();
        
        if(this.getAcao() != null)
        {
            
            if(this.getAcao().equals("Adicionar"))
            {
                timeBS.adicionarTime( this.construirModelo() );
            }
            else if(this.getAcao().equals("Pesquisar"))
            {
             System.out.println("acao pesquisar");
                if (this.construirModelo().getCodigo() == 0){
                   return timeBS.consultarTimes();
                }
                else {
                    return timeBS.consultarTime( this.construirModelo().getCodigo());
                }
            }
            else if(this.getAcao().equals("Editar"))
            {
                
                Time time = timeBS.getTime( this.construirModelo().getCodigo() );
        
                this.setNome(time.getNome());
                this.setEstado(time.getEstado());
            }
            else if(this.getAcao().equals("Alterar"))
            {
                timeBS.editarTime( this.construirModelo() );
            }
            else if(this.getAcao().equals("Excluir"))
            {
               timeBS.excluirTime( this.construirModelo().getCodigo() );
            }
            
        }
          
        return null;
    }
    
    public Iterator getTimes() throws Exception
     {
        timeBS = new TimeBS();
        return null;
       // return timeBS.consultarTimes( this.construirModelo() );
    }

    /**
     * @return the codigo
     */
    public int getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the acao
     */
    public String getAcao() {
        return acao;
    }

    /**
     * @param acao the acao to set
     */
    public void setAcao(String acao) {
        this.acao = acao;
    }

    
    
}

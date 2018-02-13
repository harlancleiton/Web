/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

/**
 *
 * @author Helder
 */
public class Pessoa {
    private int codigo;
    private String nome;
    public Pessoa(int codigo, String nome){
        this.codigo=codigo;
        this.nome=nome;
    }
    public String getNome(){
        return nome;
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao.factory;

/**
 *
 * @author Harlan
 */
public abstract class ConexaoBDFactory{
    public static Conexao getConexao(String tipoBanco){
        if (tipoBanco==null)
            return null;
        else if (tipoBanco.equals("MySQL"))
            return new ConexaoMySQL();
        else if (tipoBanco.equals("JavaBD"))
            return new JavaBD();
        else
            return null;
    }
}
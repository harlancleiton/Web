/*
 * IDatabase.java
 *
 * Created on 1 de Agosto de 2005, 20:55
 */

package database;

/**
 *
 *
 */
public interface IDatabase
{
    //public final String arquivoSQL = "C:\\TomcatEmbasa\\webapps\\pos\\WEB-INF\\sql\\ci.sql";
   /* public final String DRIVER     = "org.gjt.mm.mysql.Driver";
    public final String URL        = "jdbc:mysql://localhost/test";
    public final String USER       = "root";
    public final String PASSWORD   = "";
    *
    *
    */

    public final String DRIVER     = "org.apache.derby.jdbc.ClientDriver";
    public final String CAMINHOBANCO   = "jdbc:derby://localhost:1527/desenvWeb";
    public final String USUARIO      = "root";
    public final String SENHA   = "root";
}

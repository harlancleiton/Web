package dao;

import bean.Book;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

public class BookDAO {

    private Collection books;

    private void init() {
        books = new ArrayList();
     
    }

  

    public long salvar(Book book) {
        
        String driverName = "org.postgresql.Driver";
        String serverURLBase = "jdbc:postgresql://127.0.0.1:5432/postgres";
        String dbName = "postgres";


		try {
			/* Instanciando a classe do driver através do seu nome */
            Class.forName(driverName);

			System.out.println( "Driver JDBC carregado" );
		} catch ( Exception cnfe ) {
			System.out.println( "Driver JDBC não encontrado : " +
							   cnfe.getMessage() );
		}

		/* Criando conexão com o banco de dados */
		Connection con = null;
		try {
			/* Obtendo a conexão com o banco de dados */
			con = DriverManager.getConnection(serverURLBase, "postgres", "123456");
			System.out.println( "Conexão com o banco de dados estabelecida." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro na conexão ao Bando de Dados : " +
							            sqle.getMessage() );
		}

		/* Objeto para executar comandos sql */
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			System.out.println( "Pronto para execução de comandos sql." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro no acesso ao Bando de Dados : " +
								          sqle.getMessage() );
		}
        String sql = null;


        try{
            sql = "INSERT INTO books(id,autor, titulo,disponivel) VALUES ("+book.getId()+",'"+book.getAutor()+"', '"+book.getTitulo()+"',"+book.isDisponivel()+")";
            stmt.executeUpdate(sql);
            }
        catch (Exception e){
            System.out.println("etrro"+e.getMessage());
        
        }


        return book.getId();
    }


    public long editar(Book book) {

        String driverName = "org.postgresql.Driver";
        String serverURLBase = "jdbc:postgresql://127.0.0.1:5432/postgres";
        String dbName = "postgres";

        /* Carregando o driver JDBC para um determinado SGBD */
		try {
			/* Instanciando a classe do driver através do seu nome */
            Class.forName(driverName);

			System.out.println( "Driver JDBC carregado" );
		} catch ( Exception cnfe ) {
			System.out.println( "Driver JDBC não encontrado : " +
							   cnfe.getMessage() );
		}

		/* Criando conexão com o banco de dados */
		Connection con = null;
		try {
			/* Obtendo a conexão com o banco de dados */
			con = DriverManager.getConnection(serverURLBase, "postgres", "123456");
			System.out.println( "Conexão com o banco de dados estabelecida." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro na conexão ao Bando de Dados : " +
							            sqle.getMessage() );
		}

		/* Objeto para executar comandos sql */
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			System.out.println( "Pronto para execução de comandos sql." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro no acesso ao Bando de Dados : " +
								          sqle.getMessage() );
		}
        String sql = null;
      /* Inserindo na tabela de books */

    try{
        sql = "update books set autor='"+book.getAutor()+"' where id="+book.getId();
        stmt.executeUpdate(sql);
    }
    catch (Exception e){
        System.out.println("etrro"+e.getMessage());

    }


        return book.getId();
    }


    public Book obterBookPorId(long id) {
   
        Book book= null;
        String driverName = "org.postgresql.Driver";
        String serverURLBase = "jdbc:postgresql://127.0.0.1:5432/postgres";
        String dbName = "postgres";


        /* Carregando o driver JDBC para um determinado SGBD */
		try {
			/* Instanciando a classe do driver através do seu nome */
            Class.forName(driverName);

			System.out.println( "Driver JDBC carregado" );
		} catch ( Exception cnfe ) {
			System.out.println( "Driver JDBC não encontrado : " +
							   cnfe.getMessage() );
		}

		/* Criando conexão com o banco de dados */
		Connection con = null;
		try {
			/* Obtendo a conexão com o banco de dados */
			con = DriverManager.getConnection(serverURLBase, "postgres", "123456");
			System.out.println( "Conexão com o banco de dados estabelecida." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro na conexão ao Bando de Dados : " +
							            sqle.getMessage() );
		}

		/* Objeto para executar comandos sql */
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			System.out.println( "Pronto para execução de comandos sql." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro no acesso ao Bando de Dados : " +
								          sqle.getMessage() );
		}
        String sql = null;
      /* Inserindo na tabela de books */
         ArrayList books = new ArrayList();
        try{
            sql = "Select * from books where id = "+id;
            ResultSet rs = stmt.executeQuery(sql);
            if (rs.next()){
                book = new Book(rs.getInt("id"),rs.getString("autor"), rs.getString("titulo"), rs.getBoolean("disponivel"));
                return book;
            }
        }
        catch (Exception e){

            System.out.println(e.getMessage());
        }
        System.out.println("tamtanho"+books.size());
        return book;




    }
    
    public void delete(long id){
    	

            String driverName = "org.postgresql.Driver";
            String serverURLBase = "jdbc:postgresql://127.0.0.1:5432/postgres";
            String dbName = "postgres";

        /* Carregando o driver JDBC para um determinado SGBD */
		try {
			/* Instanciando a classe do driver através do seu nome */
            Class.forName(driverName);

			System.out.println( "Driver JDBC carregado" );
		} catch ( Exception cnfe ) {
			System.out.println( "Driver JDBC não encontrado : " +
							   cnfe.getMessage() );
		}

		/* Criando conexão com o banco de dados */
		Connection con = null;
		try {
			/* Obtendo a conexão com o banco de dados */
			con = DriverManager.getConnection(serverURLBase, "postgres", "123456");
			System.out.println( "Conexão com o banco de dados estabelecida." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro na conexão ao Bando de Dados : " +
							            sqle.getMessage() );
		}

		/* Objeto para executar comandos sql */
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			System.out.println( "Pronto para execução de comandos sql." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro no acesso ao Bando de Dados : " +
								          sqle.getMessage() );
		}
        String sql = null;
      /* Inserindo na tabela de books */
    try{
        sql = "delete from books where id = "+id;
      stmt.executeUpdate(sql);
    }
    catch (Exception e){
        System.out.println("etrro"+e.getMessage());

    }

    }

    public Collection getAllBooks() {
         String driverName = "org.postgresql.Driver";
         String serverURLBase = "jdbc:postgresql://127.0.0.1:5432/postgres";
         String dbName = "postgres";


       
        /* Carregando o driver JDBC para um determinado SGBD */
		try {
			/* Instanciando a classe do driver através do seu nome */
            Class.forName(driverName);

			System.out.println( "Driver JDBC carregado" );
		} catch ( Exception cnfe ) {
			System.out.println( "Driver JDBC não encontrado : " +
							   cnfe.getMessage() );
		}

		/* Criando conexão com o banco de dados */
		Connection con = null;
		try {
			/* Obtendo a conexão com o banco de dados */
			con = DriverManager.getConnection(serverURLBase, "postgres", "123456");
			System.out.println( "Conexão com o banco de dados estabelecida." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro na conexão ao Bando de Dados : " +
							            sqle.getMessage() );
		}

		/* Objeto para executar comandos sql */
		Statement stmt = null;
		try {
			stmt = con.createStatement();
			System.out.println( "Pronto para execução de comandos sql." );
		} catch ( SQLException sqle ) {
			System.out.println( "Erro no acesso ao Bando de Dados : " +
								          sqle.getMessage() );
		}
        String sql = null;
      /* Inserindo na tabela de books */
         ArrayList books = new ArrayList();
    try{
        sql = "Select * from books";
      ResultSet rs = stmt.executeQuery(sql);
     
      while (rs.next()){
          books.add(new Book(rs.getInt("id"),rs.getString("autor"), rs.getString("titulo"), rs.getBoolean("disponivel")));
      }
    }
    catch (Exception e){

        System.out.println(e.getMessage());
    }
        System.out.println("tamtanho"+books.size());
        return books;

    }
}
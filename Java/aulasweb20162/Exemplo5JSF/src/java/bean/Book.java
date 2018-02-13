
package bean;

import dao.*;
import java.io.Serializable;
import java.util.Map;

import javax.faces.component.UIParameter;
import javax.faces.context.FacesContext;
import javax.faces.event.ActionEvent;

public class Book implements Serializable {
	
	
	private long id;
	private String autor;
	private String titulo;
	private boolean disponivel;
	private String acao;
	
	public Book(){}
	public Book(long id, String autor, String titulo, boolean disponivel){
		this.id = id;
		this.autor = autor;
		this.titulo = titulo;
		this.disponivel = disponivel;
	}

	
	public String getAutor() {
		return autor;
	}
	public void setAutor(String autor) {
		this.autor = autor;
	}
	public boolean isDisponivel() {
		return disponivel;
	}
	public void setDisponivel(boolean disponivel) {
		this.disponivel = disponivel;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}	
	
	public void setBook(Book book){
		this.setId(book.getId());
		this.setAutor(book.getAutor());
		this.setTitulo(book.getTitulo());
		this.setDisponivel(book.isDisponivel());

	}
	
	public Book getBook(){
		return new Book(this.getId(), this.getAutor(), this.getTitulo(), this.isDisponivel());
	}

    public void initBook(ActionEvent event){
		
		this.setBook(new Book());
	}
	
	public void selecionarBook(ActionEvent event){
		
		BookDAO bookdao = new BookDAO();
		
		//Map session = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
        		
		
		UIParameter component = (UIParameter) event.getComponent().findComponent("editId");
		
		
		long id = Long.parseLong(component.getValue().toString());
		
		this.setBook(bookdao.obterBookPorId(id));
	}
	

	public void salvarBook(ActionEvent event){
		
		BookDAO bookdao = new BookDAO();
		
	//	Map session = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		bookdao.salvar(this.getBook());
	}


    public void editarBook(ActionEvent event){

		BookDAO bookdao = new BookDAO();

		//Map session = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();

		bookdao.editar(this.getBook());
	}
	
	public void deleteBook(ActionEvent event){
		
		BookDAO bookdao = new BookDAO();
		
		//Map session = FacesContext.getCurrentInstance().getExternalContext().getSessionMap();
		
		UIParameter component = (UIParameter) event.getComponent().findComponent("deleteId");
		
		long id = Long.parseLong(component.getValue().toString());
		bookdao.delete(id);
	}

    public String getAcao() {
        return acao;
    }
    public void setAcao(String acao) {
        this.acao = acao;
    }
	
}

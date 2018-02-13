
package bean;

import dao.*;
import java.util.Collection;
import java.util.Map;

import javax.faces.context.FacesContext;
public class BookList {

	Collection books;

    public Collection getBooks(){
		
		BookDAO bookdao = new BookDAO();
		
		books = bookdao.getAllBooks();
		
		return books;
	}
		
	public void setBooks(Collection books) {
		this.books = books;
	}	
}

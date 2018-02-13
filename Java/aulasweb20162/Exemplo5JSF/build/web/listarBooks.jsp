<%@ page language="java" %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<base href="<%=basePath%>">

	<title>Lista dos books</title>
</head>
  
<body>
	<f:view>
		<h:form id="bookList">
		<h:dataTable id="books" 
					 value="#{bookListBean.books}" 
					 var="book" 
					 border="1">   
		  <h:column>
		    <f:facet name="header">
		     <h:outputText  value="Autor"/>
		    </f:facet>
		    <h:outputText value="#{book.autor}" />
		  </h:column>
		  <h:column>
		    <f:facet name="header">
		      <h:outputText  value="Titulo"/>
		    </f:facet>
		    <h:outputText value="#{book.titulo}" />
		  </h:column>
		  <h:column>
		    <f:facet name="header">
		      <h:outputText  value="Disponivel"/>
		    </f:facet>
		    <h:selectBooleanCheckbox disabled="true" 
		    						 value="#{book.disponivel}" />
		  </h:column>
		  <h:column>
		    <f:facet name="header">
		      <h:outputText  value="Editar"/>
		    </f:facet>
		    <h:commandLink id="Edit" 
		    			   action="editBook" 
		    			   actionListener="#{bookBean.selecionarBook}">
		    	<h:outputText value="Editar" />
		    	<f:param id="editId" 
		    			 name="id" 
		    			 value="#{book.id}" />
		    </h:commandLink>
		  </h:column>
		   <h:column>
		    <f:facet name="header">
		      <h:outputText  value="Delete"/>
		    </f:facet>
		    <h:commandLink id="Delete" 
		    			   action="listBooks" 
		    			   actionListener="#{bookBean.deleteBook}">
		    	<h:outputText value="Delete" />
		    	<f:param id="deleteId" 
		    			 name="id" 
		    			 value="#{book.id}" />
		    </h:commandLink>

		  </h:column>
		</h:dataTable> 
		
		<h:commandLink id="Add" 
					   action="addBook"
					   actionListener="#{bookBean.initBook}">
			<h:outputText value="Adicionar" />
		</h:commandLink>
		</h:form>
	</f:view>
</body>
</html>

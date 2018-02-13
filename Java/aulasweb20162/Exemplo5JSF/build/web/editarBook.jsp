
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

	<title>Adicionar ou Editar Book</title>
</head>
  
<body>
	<f:view>
		<h:form>
		<h:panelGrid columns="2" border="1">
			
			<h:outputText value="Id:" />
			<h:inputText id="id"
						 value="#{bookBean.id}">
			</h:inputText>



            <h:outputText value="Autor:" />
			<h:inputText id="autor" 
						 value="#{bookBean.autor}">
			</h:inputText>
			
		    <h:outputText value="Titulo:" />
			<h:inputText id="titulo"
					     value="#{bookBean.titulo}">
			</h:inputText>
			
			<h:outputText value="Disponivel:" />
			<h:selectBooleanCheckbox id="disponivel"
									 value="#{bookBean.disponivel}" />
		    
		</h:panelGrid>
		
		<h:messages id="errors" 
					style="color:red;font-weight:bold" 
					layout="table" />

		<h:commandButton value="Salvar"
						 action="listBooks" 
						 actionListener="#{bookBean.editarBook}" />
		</h:form>
	</f:view>
</body>
</html>

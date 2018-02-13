<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<html>
<head>
<title>Loja Virtual</title>
</head>
<f:view>
    <h2 align="center">
    <h:outputText id="texto1" value="Catálogo de Produtos"/>
    </h2>
    <center><b>
    <h:outputText id="texto2"
    value="Escolha o produto desejado na lista abaixo. Boas compras!">
    </h:outputText></b></center>
    <br/><br/>
    <h:messages/>
    <h:form id="form">
    <%-- Obtém e exibe os produtos em uma tabela --%>
    <h:dataTable id="dtCatalogo" value="#{catalogo.catalogo}" var="produto" border="1" cellspacing="0" cellpadding="5" width="100%" >
        <%-- Imagem do produto. --%>
        <h:column>
            <h:graphicImage url="#{produto.imagem}" height="60"  alt="#{produto.nome}" />
        </h:column>
        <%-- Nome, descrição e preço do produto. --%>
        <h:column>
            <h:panelGrid columns="1">
            <h:outputText value="#{produto.nome}"/>
            <h:panelGrid columns="2">
            <h:outputText value="Preço: "/>
            <h:outputText value="#{produto.preco}">
            <f:convertNumber type="currency"/>
            </h:outputText>
            </h:panelGrid>
            </h:panelGrid>
        </h:column>
        <%-- Link para adicionar o produto no carrinho. --%>
        <h:column>
            <h:commandButton image="add.gif" action="#{carrinhoBean.adicionarItem}"/>
        </h:column>
        <%-- Botões para acessar o carrinho e o cadastro. --%>
        <f:facet name="footer">
        <h:panelGroup>
        <center>
        <h:commandButton value="Visualizar Carrinho" action="vercarrinho"/>
        </center>
        </h:panelGroup>
        </f:facet>
    </h:dataTable>
    </h:form>
</f:view>
</html>
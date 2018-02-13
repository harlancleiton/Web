<% System.out.println("\nCARRINHO"); %>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>

<html>
<head>
<title>Loja Virtual</title>
</head>
    <f:view>
        <h2 align="center">
        <h:outputText id="texto1" value="Seu Carrinho de Compras"/>
        </h2>
        <center><b>
        <h:outputText id="texto2"
        value="Escolha o produto desejado na lista abaixo. Boas
        compras!"/>
        </b></center>
        <br/><h:messages/><br/>
        <h:form id="form">
            <c:if test="${! empty carrinhoCompras.itensCarrinho}" >
        <h:dataTable id="dtCarrinho"  value="#{carrinhoCompras.itensCarrinho}" var="item"         border="1" cellspacing="0" cellpadding="5" width="100%" >      <%-- Imagem do produto. --%>
            <h:column>
                <f:facet name="header">
                <h:outputText value="Imagem"/>
                </f:facet>
                <h:graphicImage url="#{item.imagem}" height="60" />
            </h:column>
            <%-- Nome do produto. --%>
            <h:column>
                <f:facet name="header">
                <h:outputText value="Nome"/>
                </f:facet>
                <h:outputText value="#{item.nome}"/>
            </h:column>
            <%-- Preço unitário do produto. --%>
            <h:column>
                <f:facet name="header">
                <h:outputText value="Preço"/>
                </f:facet>
                <h:outputText value="#{item.preco}">
                <f:convertNumber type="currency"/>
                </h:outputText>
            </h:column>
            <%-- Quantidade do item. --%>
            <h:column>
                <f:facet name="header">
                <h:outputText value="Quantidade"/>
                </f:facet>
                <h:inputText id="quant" value="#{item.quantidade}"  maxlength="3" size="3"/>
            </h:column>
            <%-- Preço total do produto. --%>
            <h:column>
                <f:facet name="header">
                <h:outputText value="Preço Total"/>
                </f:facet>
                <h:outputText value="#{item.precoItemTotal}">
                <f:convertNumber type="currency"/>
                </h:outputText>
            </h:column>
            <%-- Remover item. --%>
            <h:column>
                <f:facet name="header">
                <h:outputText value="Remover"/>
                </f:facet>
                <h:commandLink action="#{carrinhoBean.remover}">
                <h:outputText value="remover"/>
                </h:commandLink>
            </h:column>
            <%-- Rodapé da tabela com o valor total do carrinho. --%>
            <f:facet name="footer">
            <h:panelGroup>
            <h:outputText value="Total do Carrinho: "/>
            <h:outputText value="#{carrinhoCompras.precoTotal}">
            <f:convertNumber type="currency"/>
            </h:outputText>
            </h:panelGroup>
            </f:facet>
        </h:dataTable>
        <br/>
        <center>

        <h:commandButton value="Voltar" action="catalogo" immediate="true" />
        <h:commandButton value="Atualizar" action="#{carrinhoBean.atualizar}" />
        <h:commandButton value="Limpar" action="#{carrinhoBean.limpar}" />
        </center>
        </c:if>
        <%-- Se não houver itens no carrinho, exibe uma mensagem  --%>

        <c:if test="${empty carrinhoCompras.itensCarrinho}">
        <br/><h3>Seu carrinho está vazio.</h3>
        <br/><h:commandButton value="Voltar" action="catalogo" immediate="true" />
        </c:if>
    </h:form>
    </f:view>
</html>
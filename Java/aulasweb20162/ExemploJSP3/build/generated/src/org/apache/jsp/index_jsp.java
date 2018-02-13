package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.Vector _jspx_dependants;

  static {
    _jspx_dependants = new java.util.Vector(1);
    _jspx_dependants.add("/menu.html");
  }

  private org.apache.jasper.runtime.ResourceInjector _jspx_resourceInjector;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.apache.jasper.runtime.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>:: Agenda JSP ::</title>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body bgcolor=\"#778899\" >\n");
      out.write("<table width=\"100%\" border=0 bgcolor=White>\n");
      out.write("<tr align=\"center\">\n");
      out.write("<td width=77 bgcolor=\"#EEE5DE\">\n");
      out.write("<a href=\"paginaInserir.jsp\">Inserir</a>\n");
      out.write("</td>\n");
      out.write("<td width=77 bgcolor=\"#EEE5DE\">\n");
      out.write("<a href=\"paginaBuscar.jsp\">Buscar</a>\n");
      out.write("</td>\n");
      out.write("<td width=77 bgcolor=\"#EEE5DE\">\n");
      out.write("<a href=\"paginaListar.jsp\">Listar</a>\n");
      out.write("</td>\n");
      out.write("<td width=77 bgcolor=\"#EEE5DE\">\n");
      out.write("<a href=\"index.jsp\">Sair</a>\n");
      out.write("</td>\n");
      out.write("</tr>\n");
      out.write("</table> ");
      out.write("\n");
      out.write("      <h1 align=\"center\">EXEMPLO JSP UMA AGENDA</h1>\n");
      out.write("      <h1 align=\"center\"> <img src = \"agenda.jpg\" width = \"150\" height = \"150\"/> </h1>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

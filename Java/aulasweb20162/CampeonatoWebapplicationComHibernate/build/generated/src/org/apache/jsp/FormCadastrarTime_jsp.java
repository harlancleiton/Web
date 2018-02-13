package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class FormCadastrarTime_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
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
      			"erro.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      bean.TimeBean timeBean = null;
      synchronized (request) {
        timeBean = (bean.TimeBean) _jspx_page_context.getAttribute("timeBean", PageContext.REQUEST_SCOPE);
        if (timeBean == null){
          timeBean = new bean.TimeBean();
          _jspx_page_context.setAttribute("timeBean", timeBean, PageContext.REQUEST_SCOPE);
        }
      }
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("timeBean"), request);
      out.write('\n');
      out.write('\n');

  timeBean.execute();

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <title>Adicionar Times</title>\n");
      out.write("  <link rel=\"stylesheet\" href=\"estilo.css\">\n");
      out.write("  <script language='javaScript'>\n");
      out.write("      function limparDados()\n");
      out.write("      {\n");
      out.write("        ");

        if(timeBean.getAcao()!= null && !timeBean.getAcao().equals(""))
        {
            timeBean.limparDados();
        }
        
      out.write("\n");
      out.write("      }\n");
      out.write("  </script>\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class='body' topmargin='0' class=\"cabecalho\" leftmargin='3' onload=\"javaScript:limparDados();\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<form method ='POST' action='FormCadastrarTime.jsp'>\n");
      out.write("\n");
      out.write("\n");
      out.write("<table border=\"0\" width=\"100%\">\n");
      out.write("<tr>\n");
      out.write("  <td width=\"100%\" class=\"cabecalho\">\n");
      out.write("      Adicionar Time\n");
      out.write("  </td>\n");
      out.write("</tr>\n");
      out.write("</table>\n");
      out.write("\n");
      out.write("<table border=\"0\" width=\"100%\">\n");
      out.write("\n");
      out.write("\n");
      out.write("    <tr>\n");
      out.write("      <td width=\"100%\" colspan=\"2\" class='texto_erro'>  <div align=\"left\">-\n");
      out.write("          Os campos sinalizados com <img src=\"seta_right.gif\" width=\"9\" height=\"12\"> sao obrigatorios!</div>\n");
      out.write("      </td>\n");
      out.write("    </tr>\n");
      out.write("  \n");
      out.write(" <table border=\"0\" width=\"100%\">\n");
      out.write("  <tr>\n");
      out.write("    <td class='label' align='left'>Codigo</td>\n");
      out.write("    <td>\n");
      out.write("      <input type='text' align='left' name=\"codigo\" maxlength=\"5\" size=\"5\" class='caixa_texto' value=\"");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((bean.TimeBean)_jspx_page_context.findAttribute("timeBean")).getCodigo())));
      out.write("\">\n");
      out.write("      <img src=\"seta_right.gif\" width=\"9\" height=\"12\">\n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write(" \n");
      out.write("  <tr>\n");
      out.write("    <td class='label' align='left'>Nome</td>\n");
      out.write("    <td>\n");
      out.write("        <input type='text' align='left' name=\"nome\" maxlength=\"60\" size=\"80\" class='caixa_texto' value=\"");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((bean.TimeBean)_jspx_page_context.findAttribute("timeBean")).getNome())));
      out.write("\">\n");
      out.write("      <img src=\"seta_right.gif\" width=\"9\" height=\"12\">\n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write("   <tr>\n");
      out.write("  <td class='label' >Estado</td>\n");
      out.write("  <td>\n");
      out.write("    <select name=\"estado\">\n");
      out.write("        <option value=\"ba\">ba</option>\n");
      out.write("        <option value=\"se\">se</option>\n");
      out.write("        <option value=\"rj\">rj</option>\n");
      out.write("        <option value=\"sp\">sp</option>\n");
      out.write("    </select>\n");
      out.write("  </td>\n");
      out.write("  </td>\n");
      out.write("  </tr>\n");
      out.write("  </table>\n");
      out.write("\n");
      out.write(" \n");
      out.write("    \n");
      out.write("<tr>\n");
      out.write("    <td width='100%' align='left'>\n");
      out.write("       <input type=\"submit\" name=\"acao\" value=\"Adicionar\" class='button_image'>\n");
      out.write("    </td>\n");
      out.write(" </tr>\n");
      out.write("  \n");
      out.write("</table>  \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

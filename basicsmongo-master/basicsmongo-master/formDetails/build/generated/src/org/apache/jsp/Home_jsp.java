package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSuccess</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"submitform.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\n");
      out.write("  <script src=\"http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <div class=\"header\">\n");
      out.write("</div>\n");
      out.write("<div class=\"form\">\n");
      out.write("<form method=\"post\" action=\"SaveServlet\" id=\"mycontact\" class=\"form-horizontal\">\n");
      out.write("  <div class=\"form-group nameSection\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"Name\">Name</label>\n");
      out.write("    <div class=\"col-sm-6\">\n");
      out.write("      <input type=\"text\" name=\"name\" class=\"form-control\" id=\"name\" placeholder=\"Enter your Name\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  <div class=\"form-group courseNameSection\">\n");
      out.write("    <label class=\"control-label col-sm-2\" for=\"email\">Email</label>\n");
      out.write("    <div class=\"col-sm-6\">\n");
      out.write("      <input type=\"text\" name=\"email\" class=\"form-control\" id=\"password\" placeholder=\"Enter your Password\">\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write(" <select name=\"dropdown\" size=\"1\" id=\"dropdown\">\n");
      out.write("                <option value=\"aaaaa\" selected>aaa</option>\n");
      out.write("                <option value=\"bbbbb\">bbb</option>\n");
      out.write("                <option value=\"ccccc\">cccc</option>\n");
      out.write("                <option value=\"dddddd\">dddd</option>\n");
      out.write("                <option value=\"eeeeeee\">eeeee</option>\n");
      out.write("              </select>\n");
      out.write(" \n");
      out.write("\n");
      out.write("  <button type=submit id=\"submitButton\" class=\"btn btn-primary\">SAVE</button>\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("  </form>\n");
      out.write("</div>\n");
      out.write("<div id=\"results\"></div>\n");
      out.write("<div class=\"footer\">\n");
      out.write("</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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

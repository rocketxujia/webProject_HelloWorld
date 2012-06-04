package sample;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 * Simple servlet used to test server.
 * <p/>
 * Taken from Core Servlets and JavaServer Pages 2nd Edition
 * from Prentice Hall and Sun Microsystems Press,
 * http://www.coreservlets.com/.
 * &copy; 2003 Marty Hall; may be freely used or adapted.
 */

public class HelloServlet extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String docType =
                "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 " +
                        "Transitional//EN\">\n";
        out.println(docType +
                "<HTML>\n" +
                "<HEAD><TITLE>Hello</TITLE></HEAD>\n" +
                "<BODY>\n" +
                "<H1>Hello first servlet.--get</H1>\n" +
                "</BODY></HTML>");
    }

    public void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                throws ServletException, IOException {
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String script = "var postObject = [1,2,3,4];";
        }
}

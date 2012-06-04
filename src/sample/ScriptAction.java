package sample;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 * Created with IntelliJ IDEA.
 * User: xujia01
 * Date: 12-5-29
 * Time: ÏÂÎç4:42
 * To change this template use File | Settings | File Templates.
 */
public class ScriptAction extends HttpServlet {
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response)
            throws ServletException, IOException {
        //response.setContentType("text/html");
                    PrintWriter out = response.getWriter();
                    String script = "var postObject = [1,2,3,4]; var type='get'";

        out.println(script);
    }

    public void doPost(HttpServletRequest request,
                          HttpServletResponse response)
                throws ServletException, IOException {
            //response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            String script = "var postObject = [1,2,3,4]; var type='post';";

            out.println(script);
        }
}

package sample;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.*;

public class AjaxAction extends HttpServlet
{

	/**
	 * ´®ÐÐ»¯°æ±¾ÐòºÅ
	 */
	private static final long serialVersionUID = 6643682700511421833L;

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 *
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to
	 * post.
	 *
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		response.setContentType("text/html;charset=utf-8");
		String username = request.getParameter("name");

		System.out.println(username);

		JSONObject json = new JSONObject();
		JSONArray array = new JSONArray();
		JSONObject member = null;
		for (int i = 0; i < 5; i++)
		{
			member = new JSONObject();
			member.put("name", "xujia");
			member.put("age", 15);
			array.add(member);
		}

		json.put("mydata", array);
		PrintWriter pw = response.getWriter();
		pw.print( json.toString() );
		pw.close();
	}

}

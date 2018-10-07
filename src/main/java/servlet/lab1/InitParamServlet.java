package servlet.lab1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
public class InitParamServlet extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
 
    private String myname1;
 
    public InitParamServlet() {
    }
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        this.myname1 = config.getInitParameter("myname1");
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String myname2 = this.getServletConfig().getInitParameter("myname2");
        String name1 = this.myname1;
        String name2 = myname2;
		request.setAttribute("myObject1", name1);
		request.setAttribute("myObject2", name2);
        RequestDispatcher view = request.getRequestDispatcher("/lab1/list/InitParamServlet.jsp");     
	    view.forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }
 
}

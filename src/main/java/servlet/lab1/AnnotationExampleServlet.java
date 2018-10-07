package servlet.lab1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "/annotationExample", "/annExample" }, initParams = {
        @WebInitParam(name = "myname1", value = "tuanvu"),
        @WebInitParam(name = "myname2", value = "tuanvumustache") })
public class AnnotationExampleServlet extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
 
    private String myname1;
 
    public AnnotationExampleServlet() {
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
        RequestDispatcher view = request.getRequestDispatcher("/lab1/list/AnnotationExampleServlet.jsp");     
	    view.forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }
 
}

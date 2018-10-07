package servlet.lab1;

import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

 
@WebServlet("/forwardDemo")
public class ForwardDemoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        String forward = request.getParameter("forward");
        String param;
        String title;
        if ("true".equals(forward)) {

        	title = "FORWARD";
        	request.setAttribute("title", title);
        	param = "Đây là nội dung forward !";
        	request.setAttribute("param", param);
 
        	RequestDispatcher view = request.getRequestDispatcher("/lab1/list/ForwardServlet.jsp");     
     	    view.forward(request, response);
 
            return;
        }
        title = "NO FORWARD";
    	request.setAttribute("title", title);
        param = "Đây là nội dung không forward !";
        request.setAttribute("param", param);
        RequestDispatcher view = request.getRequestDispatcher("/lab1/list/ForwardServlet.jsp");     
 	    view.forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }
 
}

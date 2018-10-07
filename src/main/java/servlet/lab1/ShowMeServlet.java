package servlet.lab1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/showMe")
public class ShowMeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    	String title = "REDIRECT";
    	request.setAttribute("title", title);
    	String param = "Đây là nội dung đã redirect !";
        request.setAttribute("param", param);
        RequestDispatcher view = request.getRequestDispatcher("/lab1/list/RedirectDemoServlet.jsp");     
 	    view.forward(request, response);
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }
 
}

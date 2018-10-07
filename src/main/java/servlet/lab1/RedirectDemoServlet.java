package servlet.lab1;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/redirectDemo")
public class RedirectDemoServlet extends HttpServlet {
 
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String redirect = request.getParameter("redirect");
        String param;
        String title;
        if ("true".equals(redirect)) {

            String contextPath = request.getContextPath();

            response.sendRedirect(contextPath + "/showMe");
            return;
        }
 
        title = "NO REDIRECT";
    	request.setAttribute("title", title);
        param = "Đây là nội dung chưa redirect !";
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
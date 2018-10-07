package servlet.lab1;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class ExampleInfoServlet extends HttpServlet {
 
    private static final long serialVersionUID = 1L;
 
    public ExampleInfoServlet() {
        super();
    }
 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String requestURL = request.getRequestURL().toString();
        request.setAttribute("requestURL", requestURL);
        
        String requestURI = request.getRequestURI();
        request.setAttribute("requestURI", requestURI);
        
        String contextPath = request.getContextPath();
        request.setAttribute("contextPath", contextPath);
        
        String servletPath = request.getServletPath();
        request.setAttribute("servletPath", servletPath);
        
        String queryString = request.getQueryString();
        request.setAttribute("queryString", queryString);
        
        String param1 = request.getParameter("account");
        request.setAttribute("param1", param1);
        
        String serverName = request.getServerName();
        request.setAttribute("serverName", serverName);
        
        String serverPort = String.valueOf(request.getServerPort()) ;
        request.setAttribute("serverPort", serverPort);
        //123
        String remoteAddr = request.getRemoteAddr();
        request.setAttribute("remoteAddr", remoteAddr);
        
        String remoteHost = request.getRemoteHost();
        request.setAttribute("remoteHost", remoteHost);
        
        String remotePort = String.valueOf(request.getRemotePort()) ;
        request.setAttribute("remotePort", remotePort);
        
        String remoteUser = request.getRemoteUser();
        request.setAttribute("remoteUser", remoteUser);
        
        Enumeration<String> headers = request.getHeaderNames();
        request.setAttribute("headers", headers);
        
        ServletContext servletContext = request.getServletContext();
        String realPath = servletContext.getRealPath("");
        request.setAttribute("realPath", realPath);
        
        RequestDispatcher view = request.getRequestDispatcher("/index.jsp");  
	    view.forward(request, response);
        
    }
 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doGet(request, response);
    }
 
}

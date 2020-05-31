package controlador;

import modelo.Persona;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Recibir extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{ 
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Recibir</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Recibir at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String dui = request.getParameter("txtDui");
        String apellidos = request.getParameter("txtApellidos");
        String nombres = request.getParameter("txtNombres");
        
        Persona person = new Persona();//Al crear el objeto se conecta a la DB
        person.setDui(dui);
        person.setApellidos(apellidos);
        person.setNombres(nombres);
        
        if (person.insertarDatos() == true) {//recordeyen que es booleana
            request.getRequestDispatcher("exito.jsp").forward(request, response);
        }else{
        request.getRequestDispatcher("noexito.jsp").forward(request, response);
        }
     
    }
    @Override
    public String getServletInfo(){
    return "Short description";
    }


}

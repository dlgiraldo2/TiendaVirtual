/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controladores;

import Modelos.Usuario;
import Modelos.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Target Directional
 * Servlet encargado de validar el inicio de sesión.
 * Escucha peticiones en la ruta /Validar
 */
@WebServlet(name = "Validar", urlPatterns = {"/Validar"})
public class Validar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    // Instancia de la clase Usuario y UsuarioDAO
    Usuario usuario = new Usuario();
    UsuarioDAO usuarioDAO = new UsuarioDAO();

    /**
     * Procesa peticiones tanto GET como POST.
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        // Este método se puede usar para lógica común o pruebas
        try (PrintWriter out = response.getWriter()) {
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Validar</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Validar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     /**
     * Método que se ejecuta cuando se hace una petición GET (por navegador o enlace).
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    /**
     * Método que se ejecuta cuando se envía un formulario con método POST.
     * Aquí se valida al usuario con los datos del formulario.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                
        // Obtener el valor del botón del formulario
        String accion = request.getParameter("accion");
        // Si el usuario hizo clic en el botón "Ingresar"
        if (accion.equalsIgnoreCase("Ingresar")) {
            // Obtener datos del formulario
            int documento = Integer.parseInt(request.getParameter("txtusuario"));
            String pass = request.getParameter("txtpassword");
            // Validar el usuario usando el DAO
            usuario = usuarioDAO.Validar(documento, pass);
            System.out.print("dato"+usuario.getNombre());
            // Si el usuario existe
            if (usuario.getNombre() != null) {
                System.out.print("dato1"+usuario.getNombre());
                request.getSession().setAttribute("usuario", usuario);
                // Redirigir al controlador con el menú principal
                response.sendRedirect("Controlador?menu=Principal");
            } else {
                // Si no existe, volver a login
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }

        } else {
            // Si no se hizo clic en "Ingresar", volver a login
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

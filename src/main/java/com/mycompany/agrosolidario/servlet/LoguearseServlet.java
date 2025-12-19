/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.agrosolidario.servlet;

import com.mycompany.agrosolidario.dao.UsuarioDao;
import com.mycompany.agrosolidario.model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "LoguearseServlet", urlPatterns = {"/LoguearseServlet"})
public class LoguearseServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LoguearseServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoguearseServlet at " + request.getContextPath() + "</h1>");
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/views/inicio-sesion.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        login(request, response);
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

    private void login(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        UsuarioDao objeto = new UsuarioDao();

        // 1. Obtener parámetros del formulario
        String correo = req.getParameter("correo");
        String contrasena = req.getParameter("contrasena");

        // 2. Validación: Usamos la función booleana que creamos antes
        // Es mejor validar directamente las credenciales; si no existen o están mal, falla.
       if (correo == null || contrasena == null || !objeto.validarCredenciales(correo, contrasena)) {
//            // Si fallan las credenciales, lo mandamos de vuelta al login con un mensaje
        req.setAttribute("mensajeError", "Correo o contraseña incorrectos");
        req.getRequestDispatcher("login.jsp").forward(req, res);
        return; // Terminamos la ejecución aquí
        }

        // 3. Éxito: Guardar al usuario en la Sesión
        // Esto es vital para que la página de 'solicitudes' sepa quién entró
        Usuario user = objeto.buscarPorEmail(correo);
        req.getSession().setAttribute("usuarioLogueado", user);

        // 4. Cargar la página protegida
        req.getRequestDispatcher("/WEB-INF/views/solicitudes.jsp").forward(req, res);
    }
}

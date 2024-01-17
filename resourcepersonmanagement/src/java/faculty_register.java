/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LENOVO
 */
@WebServlet(urlPatterns = {"/faculty_register"})
public class faculty_register extends HttpServlet {

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
            Connection con = null;
            Class.forName("com.mysql.jdbc.Driver");
            con =DriverManager.getConnection("jdbc:mysql://localhost:3306/visitor_management","root","");
                        
//            HttpSession session = request.getSession();

//            if (con!=null) {
//                out.println("Connection Succesfully");
////                response.sendRedirect("");
//            }
//            else
//            {
//                out.println("Not Connected");
//            }
            
            String fname = request.getParameter("first_name");
            String lname = request.getParameter("last_name");
            String email = request.getParameter("email");
            String ph_no = request.getParameter("phone_number");
            String com_col = request.getParameter("company_college");
            String pswd = request.getParameter("password");
            String educa = request.getParameter("education");
            String faculty_type = request.getParameter("faculty_type");
//            out.println(fname +" "+lname +" "+email +" "+ph_no +" "+com_col +" "
//                    +pswd +" "+educa +" "+faculty_type);
            if(fname.equals("")||lname.equals("")||email.equals("")||ph_no.equals("")||
                    com_col.equals("")||pswd.equals("")||educa.equals("")||faculty_type.equals(""))
            {
            response.sendRedirect("faculty_registration.jsp");
            }
            else{
              String sql = "INSERT INTO tbl_visitor (first_name, last_name, visitor_email, visitor_phoneno, cc_name, password, visitor_education, visitor_type) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

              out.println(sql);
                PreparedStatement preparestatement = con.prepareStatement(sql);
                preparestatement.setString(1, fname);
                preparestatement.setString(2, lname);   
                preparestatement.setString(3, email);
                preparestatement.setString(4, ph_no);
                preparestatement.setString(5, com_col);
                preparestatement.setString(6, pswd);
                preparestatement.setString(7, educa);
                preparestatement.setString(8, faculty_type);
                
                int rowsInserted = preparestatement.executeUpdate();
                out.println(rowsInserted);
                
                if(rowsInserted>0)
                {
                    out.println("Data inserted succesfully");
                    response.sendRedirect("faculty_registration.jsp");
                    
                }
                else{
                    out.println("Data not inserted");
                }
                
            }
            
//            response.sendRedirect("faculty_registration.jsp");
        }
        catch(Exception e)
        {
            e.printStackTrace();
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
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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

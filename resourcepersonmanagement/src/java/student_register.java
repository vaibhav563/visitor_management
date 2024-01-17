/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author LENOVO
 */
@WebServlet(urlPatterns = {"/student_register"})
public class student_register extends HttpServlet {

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
            
            String enrollment_no = request.getParameter("enrollment_no");
            String stud_name = request.getParameter("stud_name");
            String stud_course_name = request.getParameter("stud_course_name");
            String stud_email = request.getParameter("stud_email");
            String stud_phone_no = request.getParameter("stud_phnumber");
            
            out.println(enrollment_no +" "+stud_name +" "+stud_course_name +" "+stud_email +" "+stud_phone_no);

            if(enrollment_no.equals("")||stud_name.equals("")||stud_course_name.equals("")||stud_email.equals("")||
                    stud_phone_no.equals(""))
            {
            response.sendRedirect("student_registration.jsp");
            }
            else{
               String sql = "INSERT INTO tbl_student (enrollment_no, stud_name, stud_course_name, stud_email, stud_phone_no) VALUES (?, ?, ?, ?, ?)";


//              out.println(sql);
                PreparedStatement preparestatement = con.prepareStatement(sql);
                preparestatement.setString(1,enrollment_no);
                preparestatement.setString(2,stud_name);
                preparestatement.setString(3,stud_course_name);
                preparestatement.setString(4,stud_email);
                preparestatement.setString(5,stud_phone_no);
                 out.println(sql);
                
                int rowsInserted = preparestatement.executeUpdate();
                
                out.println(rowsInserted);
                
                if(rowsInserted>0)
                {
                    out.println("Data inserted succesfully");
                    response.sendRedirect("student_registration.jsp");
                    
                }
                else{
                    out.println("Data not inserted");
                }
                
            }
             
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

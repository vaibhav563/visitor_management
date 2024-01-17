<%-- 
    Document   : visitor_info
    Created on : 09-Jan-2024, 11:53:05 am
    Author     : Admin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <!--Bootstrap-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

        <!-- Boxicons -->
        <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
        <!-- My CSS -->
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <link href="store.css" rel="stylesheet" type="text/css"/>
        <title>AdminHub</title>
    </head>
    <body>
        <!-- SIDEBAR -->
        <section id="sidebar">
            <a href="#" class="brand">
                <img src="logo.png" alt="" style="margin-top: 25% ; margin-left: 25%"/>

                <!--			<i class='bx bxs-smile'></i>
                                        <span class="text">AdminHub</span>-->
            </a>
            <ul class="side-menu top">
                <li >
                    <a href="admin.jsp">
                        <i class='bx bxs-dashboard' ></i>
                        <span class="text">Dashboard</span>
                    </a>
                </li>
                <li class="active">
                    <a href="visitor_info.jsp">
                        <i class='bx bxs-shopping-bag-alt' ></i>
                        <span class="text">Visitor Information</span>
                    </a>
                </li>
                <li>
                    <a href="ad_feedback.jsp">
                        <i class='bx bx-category'></i>
                        <span class="text">Feedback</span>
                    </a>
                </li>
                <li>
                    <a href="faculty_registration.jsp">
                        <i class='bx bxs-group' ></i>
                        <span class="text"> Faculty Registration</span>
                    </a>
                </li>
                <li>
                    <a href="student_registration.jsp">
                        <i class='bx bxs-group' ></i>
                        <span class="text"> Student Registration</span>
                    </a>
                </li>
            </ul>
            <ul class="side-menu">
                <li>
                    <a href="logout" class="logout">
                        <i class='bx bxs-log-out-circle' ></i>
                        <span class="text">Logout</span>
                    </a>
                </li>
            </ul>
        </section>
        <!-- SIDEBAR -->



        <!-- CONTENT -->
        <section id="content">
            <!-- NAVBAR -->
            <nav>
                <!--			<i class='bx bx-menu' ></i>-->
                <!--			<a href="#" class="nav-link">Categories</a>-->
                <form action="#">
                    <div class="form-input">
                        <input type="search" placeholder="Search for Faculty...">
                        <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
                    </div>
                </form>
                <input type="checkbox" id="switch-mode" hidden>
                <label for="switch-mode" class="switch-mode"></label>
                <a href="message.jsp" class="notification">
                    <i class='bx bxs-bell' ></i>			
                </a>
                <a href="#" class="profile">
                    <span><i class='bx bxs-user-circle'></i></span>
                </a>
            </nav>
            <!-- NAVBAR -->

            <!-- MAIN -->
            <main>
                <div class="head-title">
                    <div class="left">
                        <h1>Visitor Information</h1>
                        <ul class="breadcrumb">
                            <!--						<li>
                                                                                    <a href="#">Dashboard</a>
                                                                            </li>-->
                        </ul>
                    </div>
                </div>
                <div class="table-data">
                    <div class="order">
                        <div class="head">
                            <!--						<h3>Visitor Information</h3>-->
                            <!-- <i class='bx bx-search' ></i> -->
                            <!-- <i class='bx bx-filter' ></i> -->
                        </div>
                        <table>
                            <thead>
                                <tr>
                                    <th>Visitor ID</th>
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>Email</th>
                                    <th>phone no</th>
                                    <th>company/college name</th>
                                    <th>Password</th>
                                    <th>Education</th>
                                    <th>Visitor Type</th>

                                </tr>
                            </thead>
                            <tbody>
                                    <%
                    try {
                        Connection con = null;
                        Class.forName("com.mysql.jdbc.Driver");
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/visitor_management", "root", "");

                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery("select * from tbl_visitor");

                        while (rs.next()) {
                            out.println(" <tr >");
                            out.println("<td>" + rs.getInt(1) + "</td>");
                            out.println("<td>" + rs.getString(2) + "</td>");
                            out.println("<td>" + rs.getString(3) + "</td>");
                            out.println("<td>" + rs.getString(4) + "</td>");
                            out.println("<td>" + rs.getString(5) + "</td>");
                            out.println("<td>" + rs.getString(6) + "</td>");
                            out.println("<td>" + rs.getString(7) + "</td>");
                            out.println("<td>" + rs.getString(8) + "</td>");
                            out.println("<td>" + rs.getString(9) + "</td>");
                            out.println("<td>");
                            out.println("<a class=btn href=delete_visitor?uid="+rs.getString(1)+"><button type='button' values='delete' class='btn btn-danger'>Delete</button></a>");
                            out.println("<td>");
                            out.println("<br>");
                            
                            out.println(" </tr >");
                        }

                        con.close();

                    } catch (Exception e) {
                        out.println(e.toString());
                    }
                %>
                        
                    
                            </tbody>
                        </table>
                    </div> 
                </div>
            </main>
            <!-- MAIN -->
        </section>
        <!-- CONTENT -->

        <script src="script.js" type="text/javascript"></script>
    </body>
</html>

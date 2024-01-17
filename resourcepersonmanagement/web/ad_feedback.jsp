<%-- 
    Document   : ad_feedback
    Created on : 09-Jan-2024, 12:31:27 pm
    Author     : Admin
--%>

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
                <li >
                    <a href="visitor_info.jsp">
                        <i class='bx bxs-shopping-bag-alt' ></i>
                        <span class="text">Visitor Information</span>
                    </a>
                </li>
                <li class="active">
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
                        <ul class="breadcrumb">
                            <!--						<li>
                                                                                    <a href="#">Dashboard</a>
                                                                            </li>-->
                        </ul>
                    </div>
                </div>
            </main>
            <!-- MAIN -->
        </section>


        <script src="script.js" type="text/javascript"></script>
    </body>
</html>

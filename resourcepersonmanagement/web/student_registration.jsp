<%-- 
    Document   : student_registration
    Created on : 09-Jan-2024, 12:39:04 pm
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
        <script>
        function validateForm() {
            var enrollmentNo = document.getElementById("enrollment_no").value;
            var studName = document.getElementById("stud_name").value;
            var courseName = document.getElementById("stud_course_name").value;
            var studEmail = document.getElementById("stud_email").value;
            var studPhNumber = document.getElementById("stud_phnumber").value;

            // Simple check for non-empty fields
            if (enrollmentNo === "" || studName === "" || courseName === "" || studEmail === "" || studPhNumber === "") {
                alert("All fields must be filled out");
                return false;
            }

            // Check email format
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailRegex.test(studEmail)) {
                alert("Invalid email address");
                return false;
            }

            // Check phone number format
            var phoneRegex = /^\d{10}$/; // Assumes a 10-digit phone number
            if (!phoneRegex.test(studPhNumber)) {
                alert("Invalid phone number");
                return false;
            }

            return true; // Form is valid
        }
    </script>   
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
                <li >
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
                <li class="active">
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
                    <div class="">
                        <!--					<input type="search" placeholder="Search for Faculty...">
                                                                <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>-->
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

        <!-- student registration form -->

        <div class="regsi_form" style="display: flex;
             justify-content: end;
             align-items: end;">
            <link rel="stylesheet" type="text/css" href="faculty_registration.css">
            <div class="registration-form">
                <div class="form-heading">Student Registration Form</div>
                <form action="student_register" method="post">
                    <label for="enrollment_no" class="form-label">Enrollment No:</label>
                    <input type="text" id="enrollment_no" name="enrollment_no" class="form-input">

                    <label for="stud_name" class="form-label">Student Name:</label>
                    <input type="text" id="stud_name" name="stud_name" class="form-input">

                    <label for="stud_course_name" class="form-label">Course Name:</label>
                    <input type="text" id="stud_course_name" name="stud_course_name" class="form-input">

                    <label for="stud_email" class="form-label">Email:</label>
                    <input type="email" id="stud_email" name="stud_email" class="form-input">

                    <label for="stud_phnumber" class="form-label">Phone Number:</label>
                    <input type="tel" id="stud_phnumber" name="stud_phnumber" class="form-input">

                    <button type="submit" class="form-button" onclick="validateForm()">Register</button>
                </form>
            </div>
        </div>

        <script src="script.js" type="text/javascript"></script>
    </body>
</html>

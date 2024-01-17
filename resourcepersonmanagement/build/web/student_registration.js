/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


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
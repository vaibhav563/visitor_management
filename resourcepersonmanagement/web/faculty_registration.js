/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function submitForm() {
    var firstName = document.getElementById("first_name").value;
    var lastName = document.getElementById("last_name").value;
    var email = document.getElementById("email").value;
    var phoneNumber = document.getElementById("phone_number").value;
    var companyCollege = document.getElementById("company_college").value;
    var password = document.getElementById("password").value;
    var education = document.getElementById("education").value;
    var facultyType = document.getElementById("faculty_type").value;

    // Check if all fields are filled
    if (
            firstName === "" ||
            lastName === "" ||
            email === "" ||
            phoneNumber === "" ||
            companyCollege === "" ||
            password === "" ||
            education === "" ||
            facultyType === ""
            ) {
        alert("Please fill in all fields");
        return false;
    }
    else{
//       window.location.href("faculty_register");
        return true;
    }

    // Check if email is valid
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        alert("Please enter a valid email address");
        return false;
    }

    // Check if phone number is valid
    var phoneRegex = /^\d{10}$/;
    if (!phoneRegex.test(phoneNumber)) {
        alert(
                "Please enter a valid phone number (10 digits without spaces or dashes)"
                );
        return false;
    }

    // Check if password is at least 6 characters long
    if (password.length < 6) {
        alert("Password must be at least 6 characters long");
        return false;
    }

    // Validation successful, submit the form
    
    
}
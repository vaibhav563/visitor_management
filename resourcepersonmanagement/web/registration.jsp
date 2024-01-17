<%-- 
    Document   : newjsp1
    Created on : 03-Jan-2024, 12:07:15 pm
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    
    <link rel="stylesheet" href="style.css" />
</head>

<style>
    /* Import Google font - Poppins */
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap");

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
    }

    body {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 20px;
        background: rgba(0, 0, 0, 0.888);
        /* background-image: url('BG2.jpg'); */
    }

    .container {
        position: relative;
        max-width: 700px;
        width: 100%;
        background: #ddd;
        padding: 25px;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        opacity: 100%;
    }

    .container header {
        font-size: 1.5rem;
        color: #333;
        font-weight: 500;
        text-align: center;
    }

    .container .form {
        margin-top: 30px;
        opacity: 100%;
    }

    .form .input-box {
        width: 100%;
        margin-top: 20px;
    }

    .input-box label {
        color: #333;
    }

    .form :where(.input-box input, .select-box) {
        position: relative;
        height: 50px;
        width: 100%;
        outline: none;
        font-size: 1rem;
        color: #707070;
        margin-top: 8px;
        border: 1px solid #ddd;
        border-radius: 6px;
        padding: 0 15px;
    }

    .input-box input:focus {
        box-shadow: 0 1px 0 rgba(0, 0, 0, 0.1);
    }

    .form .column {
        display: flex;
        column-gap: 15px;
    }

    .form .gender-box {
        margin-top: 20px;
    }

    .gender-box h3 {
        color: #333;
        font-size: 1rem;
        font-weight: 400;
        margin-bottom: 8px;
    }

    .form :where(.gender-option, .gender) {
        display: flex;
        align-items: center;
        column-gap: 50px;
        flex-wrap: wrap;
    }

    .form .gender {
        column-gap: 5px;
    }

    .gender input {
        accent-color: rgb(130, 106, 251);
    }

    .form :where( .gender label) {
        cursor: pointer;
    }

    .gender label {
        color: #707070;
    }

    .address :where( .select-box) {
        margin-top: 15px;
    }

    .select-box select {
        height: 100%;
        width: 100%;
        outline: none;
        border: none;
        color: #707070;
        font-size: 1rem;
    }

    .form button {
        height: 55px;
        width: 100%;
        color: #fff;
        font-size: 1rem;
        font-weight: 400;
        margin-top: 30px;
        border: none;
        cursor: pointer;
        transition: all 0.2s ease;
        background: rgb(59, 59, 61);
    }

    .form button:hover {
        background: rgba(10, 10, 10, 0.889);
    }

/*    //Responsive/*/
    @media screen and (max-width: 500px) {
        .form .column {
            flex-wrap: wrap;
        }

        .form :where(.gender-option, .gender) {
            row-gap: 15px;
        }
    }
</style>

<body>
    <section class="container">
        <header>Registration Form</header>
        <form action="#" class="form">
            <div class="input-box">
                <label>First Name</label>
                <input type="text" placeholder="Enter first name" required />
            </div>
            
            <div class="input-box">
                <label>Last Name</label>
                <input type="text" placeholder="Enter last name" required />
            </div>

            <div class="input-box">
                <label>Email Address</label>
                <input type="text" placeholder="Enter email address" required />
            </div>

            <div class="column">
                <div class="input-box">
                    <label>Phone Number</label>
                    <input type="number" placeholder="Enter phone number" required />
                </div>
                <div class="input-box">
                    <label>company name</label>
                    <input type="text" placeholder="Enter company name" required />
                </div>
            </div>
             <div class="input-box">
                    <label>Password</label>
                    <input type="password" placeholder="Enter Password" required />
                </div>
           
            <div class="input-box address">
                <label>Visitor Type:</label>
                <div class="column">
                    <div class="select-box">
                        <select>
                            <option hidden>visitor_type</option>
                            <option value="guest">Guest</option>
                            <option value="contractor">Contractor</option>
                            <option value="employee">Employee</option>
                            <option value="professor">Professor</option>
                            <option value="ass_professor">Assistant Professor</option>
                        </select>
                    </div>
                </div>
            </div>
            <button>Submit</button>
        </form>
    </section>
</body>

</html>

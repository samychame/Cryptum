function loggedIn() {
    if (document.cookie != '') {
        document.getElementById('login').innerHTML = '<a href="#" onclick = "logout()"></a> Logout';
        document.getElementById('login1').remove();
    }
}

// Function to log out the user by deleting all cookies and reloading the page
function logout() {
    const cookies = document.cookie.split(";");

    for (let i = 0; i < cookies.length; i++) {
        const cookie = cookies[i];
        const eqPos = cookie.indexOf("=");
        const name = eqPos > -1 ? cookie.substr(0, eqPos) : cookie;

        // Delete the cookie by setting its expiration date to a past date
        document.cookie = name + "=;expires=Thu, 01 Jan 1970 00:00:00 GMT";

        // Reload the page to ensure that the changes take effect
        location.reload();
    }
}

function validDel() {
    var email = document.getElementById("email").value;
    var msg = document.getElementById("msg");
    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;//regular expression receives letter,numbers,dots than @ than letters or numbers and than a dot and a word of at least 2 letters
    if (!emailRegex.test(email)) {
        msg.innerHTML = "Invalid email";
        return false;
    }
    else {
        msg.innerHTML = "";
    }
    return true;
}

function validate() {
    var email = document.getElementById("email").value;
    var msg = document.getElementById("msg");
    var pswd = document.getElementById("password").value;
    var msgPswd = document.getElementById("msgPswd");
    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;//regular expression receives letter,numbers,dots than @ than letters or numbers and than a dot and a word of at least 2 letters
    if (!emailRegex.test(email)) {
        msg.innerHTML = "Invalid email";
        return false;
    }
    else {
        msg.innerHTML = "";
    }
    if (pswd.length <= 2 || pswd.includes("'") || pswd.includes('"')) {
        msgPswd.innerHTML = "Invalid password";
        return false;
    } else {
        msgPswd.innerHTML = "";
    }
    return true;
}



// Function to validate registration form
function validReg() {
    const nameRegex = /^[\p{L}\p{M}\s]+$/u;
    //const nameRegex = /^[a-z\u05D0-\u05EA']+$/i; // Regular expression for validating name
    const emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; // Regular expression for validating email

    var fname = document.getElementById("fName").value; // Get first name from input field
    var lname = document.getElementById("lName").value; // Get last name from input field
    var errFname = document.getElementById("errFname"); // Error message element for first name
    var errLname = document.getElementById("errLname"); // Error message element for last name
    var email = document.getElementById("email").value; // Get email from input field
    var errEmail = document.getElementById("errEmail"); // Error message element for email
    var pswd = document.getElementById("password").value; // Get password from input field
    var pswd2 = document.getElementById("password2").value + ""; // Get password confirmation from input field and convert to string
    var error = document.getElementById("errPassword"); // Error message element for password
    var error2 = document.getElementById("errPassword2");
    var flag = true; // Flag to track form validity

    // Validate first name
    if (!nameRegex.test(fname)) {
        errFname.innerHTML = "Invalid name";
        flag = false;
    } else {
        errFname.innerHTML = "";
    }

    // Validate last name
    if (!nameRegex.test(lname)) {
        errLname.innerHTML = "Invalid name";
        flag = false;
    } else {
        errLname.innerHTML = "";
    }

    // Validate email
    if (!emailRegex.test(email)) {
        errEmail.innerHTML = "Invalid email";
        flag = false;
    } else {
        errEmail.innerHTML = "";
    }
    if (pswd.length <= 2 || pswd.includes("'") || pswd.includes('"')) {
        error2.innerHTML = "The password must be at least 3 characters and not contain ' or"+'"';
        flag = false;
    } else {
        error.innerHTML = "";
    }
    // Validate password
    if (pswd != pswd2) {
        error.innerHTML = "The passwords do not match.";
        flag = false;
    } else {
        error.innerHTML = "";
    }

    return flag; // Return the overall validity flag for the form
}



// Function to check the validity of user input based on the selected option
function checkUp() {
    var selectElement = document.getElementById("options");

    // Get the selected value from the options
    var selectedValue = selectElement.options[selectElement.selectedIndex].value;

    var data = document.getElementById("data").value;

    // Regular expression pattern to match valid names (letters and certain characters)
    const nameRegex = /^[\p{L}\p{M}\s]+$/u;
    // Flag variable to track the validity of the input
    flag = true;

    if (selectedValue === "fName" || selectedValue === "lName") {
        // If the selected option is first name or last name, validate against the name regex
        if (!nameRegex.test(data)) {
            // If the input doesn't match the name regex, display an error message
            document.getElementById("error").innerHTML = "Invalid Name";
            flag = false;
        }
    }
    if (selectedValue === "pswd") {
        // If the selected option is password, check its length
        if (data.length <= 2 || data.includes("'") || data.includes('"')) {
            // If the password is less than 3 characters, display an error message
            document.getElementById("error").innerHTML = "The password must be at least 3 characters and not contain ' or" + '"';
            flag = false;
        }
    }

    return flag;
}

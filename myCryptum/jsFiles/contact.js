import CONFIG from "./config.js";

function SendMail() {
    // Get values from input fields
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var message = document.getElementById("message").value;

    // Get error element
    var error = document.getElementById("msg");

    // Check if any field is empty
    if (name === '' || email === '' || message === '') {
        error.innerHTML = "Please fill in all the required fields";
        return; // Stop the function execution if any field is empty
    }

    // Create parameters object for sending email
    var params = {
        from_name: name,
        email_id: email,
        message: message
    };

    // Send email using emailjs library

    emailjs.send(
        CONFIG.EMAILJS.SERVICE_ID,
        CONFIG.EMAILJS.TEMPLATE_ID,
        params
    ).then(function (res) {
        alert("Success!" + res.status);
        location.reload();
    });

}

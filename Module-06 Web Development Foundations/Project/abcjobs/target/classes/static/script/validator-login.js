/**
 * Login Validation
 */
 
const form = document.getElementById("form");

const email = document.getElementById("email");
const password = document.getElementById("password");

function checkValidation() {
  
  const inputEmail = email.value.trim();
  const inputPassword = password.value.trim();
  
  if (inputEmail === null || inputEmail === "") {
    document.querySelector(".errorEmail").style.display = "block";
    email.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorEmail").style.display = "none";
    email.classList.remove("error-border");
  }
  
  if (inputPassword === null || inputPassword === "") {
    document.querySelector(".errorPassword").style.display = "block";
    password.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorPassword").style.display = "none";
    password.classList.remove("error-border");
  }

  return true;
}

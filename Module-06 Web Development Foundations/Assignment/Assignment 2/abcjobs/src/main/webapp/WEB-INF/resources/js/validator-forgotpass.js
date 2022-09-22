/**
 * Login Validation
 */
 
const form = document.getElementById("form");
const email = document.getElementById("email");

function checkValidation() {
  
  const inputEmail = email.value.trim();
  
  if (inputEmail === null || inputEmail === "") {
    document.querySelector(".errorEmail").style.display = "block";
    email.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorEmail").style.display = "none";
    email.classList.remove("error-border");
  }
 
  return true;
}

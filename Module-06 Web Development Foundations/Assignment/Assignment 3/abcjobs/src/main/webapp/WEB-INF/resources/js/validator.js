/**
 * Registration Validation
 */
 
const form = document.getElementById("form");

const email = document.getElementById("email");
const password = document.getElementById("password");
const firstName = document.getElementById("fname");
const lastName = document.getElementById("lname");
const city = document.getElementById("city");
const country = document.getElementById("country");


function checkValidation() {
  
  const inputEmail = email.value.trim();
  const inputPassword = password.value.trim();
  const inputFName = firstName.value.trim();
  const inputLName = lastName.value.trim();
  const inputCity = city.value.trim();
  const inputCountry = country.value.trim();
  
  
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
  if (inputFName === null || inputFName === "") {
    document.querySelector(".errorFname").style.display = "block";
    firstName.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorFname").style.display = "none";
    firstName.classList.remove("error-border");
  }

  if (inputLName === null || inputLName === "") {
    document.querySelector(".errorLname").style.display = "block";
    lastName.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorLname").style.display = "none";
    lastName.classList.remove("error-border");
  }
  
  if (inputCity === null || inputCity === "") {
    document.querySelector(".errorCity").style.display = "block";
    city.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorCity").style.display = "none";
    city.classList.remove("error-border");
  }
  
  if (inputCountry === null || inputCountry === "") {
    document.querySelector(".errorCountry").style.display = "block";
    country.classList.add("error-border");
    return false;
  } else {
    document.querySelector(".errorCountry").style.display = "none";
    country.classList.remove("error-border");
  }
  
  

  return true;
}

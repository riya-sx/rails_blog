// document.getElementById("hey-button").addEventListener("click", function() {
//       alert('Hey User');
//   });

// document.getElementById("hey-button").onmouseover = function() {
//       alert('Hey User mouseover');
// };
// document.getElementById("hey-button").onkeyup = function(event) {
//   if (event.key === 'Enter') {
//       alert('Hey User keyup');
//   }
// };


let x=document.getElementById("user_email")
console.log(x.value)
x.onkeyup=function(){
  let emailRegExp = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\d/;
  if(x.value.match(emailRegExp)){
    x.style.border="3px solid green"
  }
  else{
    x.style.border="3px solid red"
  }
  
}

let y=document.getElementById("user_password")
console.log(y.value)
y.onkeyup=function(){
  let passwordRegExp = /^.{3,}$/;
  if(y.value.match(passwordRegExp)){
    y.style.border="3px solid green"
  }
  else{
    y.style.border="3px solid red"
  }
  
}

let passwordField = document.getElementById("user_password");
let confirmPasswordField = document.getElementById("user_password_confirmation");

confirmPasswordField.onkeyup = function() {
  let passwordRegExp = /^.{3,}$/;
  if (confirmPasswordField.value.match(passwordRegExp) && confirmPasswordField.value === passwordField.value) {
    confirmPasswordField.style.border = "3px solid green";
  } else {
    confirmPasswordField.style.border = "3px solid red";
  }
};

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h5 {font-family: "Raleway", sans-serif}
body, html {height: 100%}
body {
    background-image: url('http://images.mentalfloss.com/sites/default/files/styles/mf_image_3x2/public/istock_43355764_small.jpg?itok=9pH4hvAN&resize=1100x740');
    min-height: 100%;
    background-position: center;
    background-size: cover;
}
/* The message box is shown when the user clicks on the password field */
#message {
	display: none;
	background: #f1f1f1;
	color: #000;
	position: relative;
	padding: 20px;
	margin-top: 10px;
}

#message p {
	padding: 10px 35px;
	font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
	color: green;
}

.valid:before {
	position: relative;
	left: -35px;
	content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
	color: red;
}

.invalid:before {
	position: relative;
	left: -35px;
	content: "✖";
}

</style>
<body>
   ${ message2 }

  
  <div class="w3-display-center w3-container">
 
	<form action="success" method="get">
		<fieldset>
		
			<legend>Create an account: </legend>
			First Name: <input type="text" name="fName" placeholder="First Name"
				required> <br> <br> Last Name: <input type="text"
				name="lName" placeholder="Last Name"> <br> <br>
			Email: <input type="text" name="email"
				placeholder="name@whatever.com"> <br> <br> Phone
			Number: <input type="tel" name="phone" placeholder="(313) 123-1234">
			<br> <br> Password: <input type="password" id="psw"
				name="pass" placeholder="Password1234"
				pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
				required> <br>
			<div id="message">
				<p>Password must contain the following:</p>
				<p id="letter" class="invalid">
					A <b>lowercase</b> letter
				</p>
				<p id="capital" class="invalid">
					A <b>capital (uppercase)</b> letter
				</p>
				<p id="number" class="invalid">
					A <b>number</b>
				</p>
				<p id="length" class="invalid">
					Minimum <b>8 characters</b>
				</p>
				</div>
		</fieldset>
		<fieldset>
			<legend>Coffee: </legend>
			<input type="checkbox" name="test" value="Decaf">Decaf<br>
			<input type="checkbox" name="test" value="Regular">Regular<br>
			<p>Type: </p>
			<select name="dropDown">
				<option value="latte">Latte</option>
				<option value="cappuccino">Cappuccino</option>
				<option value="drip coffee">Drip Coffee</option>
				<option value="iced coffee">Iced Coffee</option>
				</select><br>
			
			<p>Size</p>
			<select name="dropDown2">
				<option value="small">Small</option>
				<option value="medium">Medium</option>
				<option value="large">Large</option>
			</select><br>
		</fieldset>
		<input type="submit" value="Submit" onclick="checkEmail();">
		</form>
			
    
  </div>


<script>
		var myInput = document.getElementById("psw");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");

		// When the user clicks on the password field, show the message box
		myInput.onfocus = function() {
			document.getElementById("message").style.display = "block";
		}

		// When the user clicks outside of the password field, hide the message box
		myInput.onblur = function() {
			document.getElementById("message").style.display = "none";
		}

		// When the user starts to type something inside the password field
		myInput.onkeyup = function() {
			// Validate lowercase letters
			var lowerCaseLetters = /[a-z]/g;
			if (myInput.value.match(lowerCaseLetters)) {
				letter.classList.remove("invalid");
				letter.classList.add("valid");
			} else {
				letter.classList.remove("valid");
				letter.classList.add("invalid");
			}

			// Validate capital letters
			var upperCaseLetters = /[A-Z]/g;
			if (myInput.value.match(upperCaseLetters)) {
				capital.classList.remove("invalid");
				capital.classList.add("valid");
			} else {
				capital.classList.remove("valid");
				capital.classList.add("invalid");
			}

			// Validate numbers
			var numbers = /[0-9]/g;
			if (myInput.value.match(numbers)) {
				number.classList.remove("invalid");
				number.classList.add("valid");
			} else {
				number.classList.remove("valid");
				number.classList.add("invalid");
			}

			// Validate length
			if (myInput.value.length >= 8) {
				length.classList.remove("invalid");
				length.classList.add("valid");
			} else {
				length.classList.remove("valid");
				length.classList.add("invalid");
			}
		}
		function checkEmail() {

		    var email = document.getElementById('txtEmail');
		    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

		    if (!filter.test(email.value)) {
		    alert('Please provide a valid email address');
		    email.focus;
		    return false;
		 }
		}
	</script>


</body>
</html>


 <link rel="stylesheet" href="menu.css" />
<link rel="stylesheet" href="regestercss.css" />

<body style="background:black;font-family: cursive;">
  <ul>
        <li style="margin-left: 500px "><a class="active" href="home.php">Home</a></li>
        <li><a href="cart.html">shopping</a></li>
        <li><a href="login1.php">logIn</a></li>
    </ul>

<form style="margin:20px"  action="register.php" method="post">
	<div class="container">
		<h1>Register</h1>
		<p>Please fill in this form to create an account.</p>
		<hr>
		
		<label for="name">Name:</br></label>
		<input  type="text" placeholder="Enter your Name" id="name" name="name" required><br>
		<label for="id">id:</br></label>
		<input type="text" placeholder="Enter your ID" id="id" name="id" required>
		<label for="password">password:</br></label>
		<input  type="password" placeholder="Enter password" id="password" name="password"required>
		<label for="phone">phone:</br></label>
		<input type="text"  placeholder="Enter your phone number" id="phone" name="phone">
		<label for="usertype">I am a:</br></label>
		<select class="s" id="usertype" name="usertype">
			<option value="client">Client</option>
			<option value="store_worker">Store worker</option>
		</select>
  <input  class="submit" type="submit" value="sign_up" name="sign_up">
  </div>
   <div class="container signin">
    <p>Already have an account? <a href="login1.php">Sign in</a>.</p>
  </div>
</form> 


<?php
$conn = new mysqli("localhost", "root", "", "orot2000");
if (!$conn) {
  die("Error connecting to database: " . mysqli_connect_error());
  print "Connected successfully";
}
if(isset($_POST['sign_up'])){
  $id = $_POST['id'];
  $password =  $_POST['password'];
  $name =  $_POST['name'];
  $phone =  $_POST['phone'];
  $usertype = $_POST['usertype'];

  if ($usertype === 'client') {
    $sql = "INSERT INTO custumers (id, password, phone, name) 
	VALUES('$id', '$password','$phone','$name')";
  } else if ($usertype === 'store_worker') {
    $sql = "INSERT INTO workers (name, password, phone, id) 
	VALUES('$name', '$password', '$phone', '$id')";
  }

  if($conn->query($sql) === TRUE) {
    echo "New record created successfully";
  } else {
    echo "Error: " . $sql . "<br>" . $conn->error;
  }

  header('Location: login1.php');
}
?>

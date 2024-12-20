<?php
include "login.php";
error_reporting(0);
session_start();
if (!empty($_SESSION['username']) AND !empty($_SESSION['password']))
{
  header('location:BorangLaporanBulanan.php');
}
else
{
?>

<!DOCCTYPE HTML>
<html>
<head>
	<title>BORANG LAPORAN BULANAN AKADEMI BINAAN MALAYSIA WILAYAH TENGAH</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<style>
		body {
			font-family: Arial, sans-serif;
			margin: 0;
			padding: 0;
			background-color: #f4f4f4;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
			background-image: url('brochureabm.jpg');
			background-position: center;
		}
		
		form {
			background-color: white;
			padding: 20px;
			border-radius: 8px;
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1)
			width: 90%;
			max-width: 400px;
			box-sizing: border-box;
		}
		
		h1 {
			font-size: 20px;
			margin-bottom: 20px;
			text-align: center;
		}
		
		.image-container {
            text-align: center;
            margin-top: 5px;
        }
        .image-container img {
            max-width: 40%;
            height: auto;
        }
		
		label {
			display: block;
			margin-bottom: 5px;
			font-weight: bold;
		}
		
		input[type="text"], input[type="password"] {
			width: 100%;
			padding: 10px;
			margin-bottom: 15px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}			
		
		input[type="submit"] {
			width: 100%;
			padding: 10px;
			background-color: #007bff;
			color: white;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			font-size: 16px;
		}
		
		input[type="button"] {
			width: 100%;
			padding: 10px;
			background-color: #007bff;
			color: white;
			border: none;
			border-radius: 4px;
			cursor: pointer;
			font-size: 16px;
		}
		
		input [type="submit"]:hover {
			background-color: #0056b3;
		}
		
		@media(max-width: 400px) {
			h1 {
				font-size: 18px;
			}
			input[type="submit"] {
				font-size: 14px;
			} 
		}
	</style>
	<script>
		function setAction(action) {
			var form = document.getElementById('user');
			form.action = action;
			form.submit();
		}
		
		function setAction(action) {
            var form = document.getElementById('reportForm');
            form.action = action;
            form.submit();
        }
	</script>
</head>
<body>
	<center>
	<form class="user" method="post" action="login.php">
		<div class="image-container">
            <img src="abmlogo.png" alt="Logo ABM">
        </div>
		<h1>BORANG LAPORAN BULANAN AKADEMI BINAAN MALAYSIA WILAYAH TENGAH</h1>
		<label for="username">Username: </label>
		<input type="text" id="username" name="username" required><br><br>
		
		<label for="password">Password: </label>
		<input type="password" id="password" name="password" class="form-control form-control-user" placeholder="**********" required><br><br>
		
		<input type="submit" value="Log In"><br>
		
	</form>
	<form id="reportForm" method="POST">
			<label for="register">Not Register Yet? (For Staff Only)</label>
			<th><input type="button" value="Register" onclick="setAction('register1.php')"></th>
		</form>
	</center>
	
	<?php 
	if (isset ($error)) {
		echo "<p style='color:red;'>$error</p>";
	}
	?>
</body>
</html> 
<?php
}
?>
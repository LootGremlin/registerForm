<?php 
  include("registrationHandler.php");
  $cookie_id = "user";
  $verify;

  if(isset($_POST['submitForm'])){
      $fName=$_POST['firstName'];
      $lName=$_POST['lastName'];
      $email=$_POST['email'];
      $pass=md5($_POST['userPass']);

      $verify = "select * from accounts where Email = '$email'";
      $getCurrent=mysqli_query($con, $verify);
      if((mysqli_num_rows($getCurrent)) == 0){
        $insert_user="insert into accounts (FirstName, LastName, HashPass, Email) values ('$fName', '$lName', '$pass', '$email')";
      
        $run_user = mysqli_query($con, $insert_user);
        $id = mysqli_insert_id($con);
        if($run_user){
          $_POST['validate'] = $id;
        }else{
          echo "<script>alert('Something Went Wrong')</script>";
        }
      }else{
        $_POST['validate'] = -1;
      }
  }

?>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display|Spartan&display=swap" rel="stylesheet">
  </head>
  <body>
    <div class="container">
    <p class="headingBig">Register</p>
    <div class="card">
      <form method="POST">
        <label>First Name</label><br>
        <input type="text" name="firstName" required><br><br>
        <label>Last Name</label><br>
        <input type="text" name="lastName" required><br><br>
        <label>Email</label><br>
        <input type="text" name="email" required><br><br>
        <label>Password</label><br>
        <input type="password" name="userPass" required><br><br>
        <!-- The line of code below addresses the sin of using hidden inputs for verification or authentication -->
        <input type="hidden" name="validate" id = "stat" value = <?php echo isset($_POST['validate'])? $_POST['validate'] : '';?>><br> 
        <?php if(isset($_POST['validate'])):?> 
          <?php if( $_POST['validate'] == -1): ?>
            <p style="font-family: 'Spartan';text-align: center; color: yellow;">Email is already taken</p>
          <!-- Addresses the sin where the cookie below is set and is dangerously modifiable. -->
          <?php elseif($_POST['validate'] != ''): ?>
            <?php setcookie($cookie_id, $_POST['validate']); ?>
          <!-- The code above also adresses the sin where the cookie is also not HTTP only and secure -->
            <?php
              echo "<script>alert('Registration successful')</script>";
            ?>
          <?php endif; ?>
        <?php endif; ?>
        <input type="submit" class="buttonstyle" name="submitForm" value="Register">
      </form>
      <br>
      <br>
    </div>
    </div>
  </body>
</html>
<?php
  $con=mysqli_connect('localhost', 'root', '', 'test');

  if(!$con){
    echo "<script>alert('Error connection with database')</script>";
  }

 ?>
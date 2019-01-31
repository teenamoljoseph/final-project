<?php
if (isset($_POST["submit"])){
$name=$_POST['name'];
$address=$_POST['address'];
$phone=$_POST['phone'];
echo "$name"; 
echo "<br>$address";
echo "<br>$phone";
}
?>
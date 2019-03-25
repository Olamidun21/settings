<?php
function customError($errno, $errstr) {
    echo "";
  }
  set_error_handler("customError");
    echo($test);

  $sum=$_POST['val1']+$_POST['val2']+$_POST['val3'];
  $v4=$_POST['val4'];

if($sum==$v4){
for($i=0; $i<=6;  $i++){
$name=$_POST['vis'.$i];
if($name=="on"){
    $name="Y";
}else{
    $name="N";
}

$id=$_POST['id'.$i];
$sname=$_POST['name'.$i];
$value1=$_POST['val'.$i];
if($value1==''){
    $value1=0;
}
$conn= mysqli_connect("localhost","root","","settings_db");
$query = mysqli_query($conn, "update settings_tb set settings_name ='$sname',visibility ='$name', value1='$value1', updated_at=now() where settings_id='$id'")or die (mysqli_error($conn));
}
if($query){
echo "<script>window.location='index.php';</script>";
}else{
    echo "not successful";
 }
}else {
$msg="invalid input";
include_once "index.php";
}
?>
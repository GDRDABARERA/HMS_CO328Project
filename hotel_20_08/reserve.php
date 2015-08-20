<?php
 define('HOST','localhost');
 define('USERNAME', 'root');
 define('PASSWORD','');
 define('DB','wecelebrate');
 
 $con = mysqli_connect(HOST,USERNAME,PASSWORD,DB);

  if($con)
      echo "successfully mysql accesses reserved!! :)"
 
 $first_name = $_POST['first_name'];
 $last_name = $_POST['last_name'];
 $nic = $_POST['nic'];
 $email = $_POST['email'];
 $town= $_POST['town'];
 $phone= $_POST['phone'];
 $reserve_date = $_POST['datepicker'];
 $reserve_time_from = $_POST['reserve_time_from'];
 $reserve_time_to = $_POST['reserve_time_to'];
 $reason = $_POST['subject'];
 $payment = $_POST['cost'];
 
 
 $sql = "INSERT INTO reservation (first_name,last_name,town,reserve_date,reserve_time_from,phone,nic,email,reason,reserve_time_to,payment) values ('$first_name','$last_name','$town','$reserve_date','$reserve_time_from','$phone','$nic','$email','$reason','$reserve_time_to','$payment')";
 
 if($sql)
      echo "successfully reserved!! :)"
 
?>
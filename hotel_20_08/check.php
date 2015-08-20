<?php

        $username="root";
        $password="";
        $hostname="localhost";

        $dbhandle = mysql_connect($hostname,$username,$password) or die("Unable to connect to MYSQL");

        //echo "Connected to mySQL<br>"
        $selected =mysql_select_db("wecelebrate",$dbhandle) or die("Could not select a db");

        $result = mysql_query("SELECT date, time from availability");

        while($row = mysql_fetch_array($result)){
        
                if(($row{'date'}==$_POST['t_date'])&&($row{'time'}==$_POST['t_time'])){
                 echo "THE DATE AND TIME IS NOT AVAILABLE";
                
                }else{
                        echo "you can customize";
                }

        }
        
        

?>

<?php

//request received with parameters
if($_POST["action"] == "loginUser") {
  
  //store data from login form in variables
  $loginName = $_POST["loginName"];
  $loginPassword = $_POST["loginPassword"];
  
   //check if xml file exists
  if(file_exists('user.xml')) {
   //load data from xml file into xml variable
   $xml = simplexml_load_file('user.xml');
   
   if($xml != "") {
     
     $errorMessage = "";
     
      foreach($xml->children() as $child) {
        
       if ($loginName == $child->username) {

           if($loginPassword == $child->password) {
             $errorMessage = "Password match";
             break;
           } else {
             $errorMessage = "Password does not match";
             break;
           }
         } else {
           $errorMessage = "User Not Found";
         }
      }
     
     switch($errorMessage) {
       case "User Not Found":
         echo "User Does not exist";
         break;
       case "Password does not match":
         echo "Password Incorrect";
         break;
       case "Password match":
         echo "User Login success";
         break;
     }
     
   } else {
     echo "DB file is empty!"; 
   }

  // if file does not exist  
  } else {
    exit('Failed to open user.xml');
  }
  
} else {
  echo "Error...";
}
?>
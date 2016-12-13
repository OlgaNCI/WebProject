<?php

$xmlFilePath = '/home/cabox/workspace/webProject/user.xml';
$secret = '6LcrxQ0UAAAAAK-AyNQeUBtr6i2P8v0jeB3KVMPp';
    
if($_POST['action'] == "saveNewUser") {
      
      $response = $_POST['g-recaptcha-response'];
      $remoteip  = $_SERVER['REMOTE_ADDR'];
      $capchaUrl = 'https://www.google.com/recaptcha/api/siteverify?secret='.$secret.'&response='.$response.'&remoteip='.$remoteip;
    
      $url = file_get_contents($capchaUrl);
      $result = json_decode($url, TRUE);
  
      if ($result["success"] == true) {
  
          //store form data in variables
          $username = $_POST["username"];
          $email = $_POST["email"];
          $password = $_POST["password"];

          //check if xml file exists
          if(file_exists('user.xml')) {
            //load data from xml file into xml variable
            $xml = simplexml_load_file('user.xml');
            //add new user element to the variable
            $newChild = $xml->addChild('user');
            $newChild->addChild('username',$username);
            $newChild->addChild('email',$email);
            $newChild->addChild('password',$password);
          }
  
          //if file doesnt exist
          else{
            exit('Failed to open user.xml');
          }
          //save new data from variable back into an xml file
          file_put_contents($xmlFilePath, $xml->asXML());
        echo "New user saved OK";
      } else {
        echo "Captcha challenge failed!". var_dump($result);
      }
} else {
  echo "Unknown action requested.";
}
 // }  
?>
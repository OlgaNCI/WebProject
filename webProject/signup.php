<?php
  if(isset($_POST['submit'])){
      $secret='6LcrxQ0UAAAAAK-AyNQeUBtr6i2P8v0jeB3KVMPp';
      $response=$_POST['g-recaptcha-response'];
      $remoteip=$_SERVER['REMOTE_ADDR'];

      $url=file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=$secret&response=$response&remoteip=$remoteip");
      $result=json_decode($url, TRUE);

      if($result['success']==1){
        //when user is verified
         /*if(isset($_SERVER['HTTP_REFERER'])){
              header("Location: ".$_SERVER['HTTP_REFERER']);
            }
         else{
              echo "Error";
         }*/
            //store form data in variables
          $username=$_POST["username"];
          $email=$_POST["email"];
          $password=$_POST["password"];
          $confPass=$_POST["confPass"];

          //check if xml file exists
          if(file_exists('user.xml')){
            //load data from xml file into xml variable
            $xml=simplexml_load_file('user.xml');
            //add new book element to the variable
            $newChild=$xml->addChild('user');
            $newChild->addChild('username',$username);
            $newChild->addChild('email',$email);
            $newChild->addChild('password',$password);
          }
          //if file doesnt exist
          else{
            exit('Failed to open user.xml');//error message
          }
          //save new data from variable back into an xml file
          file_put_contents('/home/cabox/workspace/webProject/user.xml',$xml->asXML());
          //header("Location: ".$_SERVER['HTTP_REFERER']);
          echo "<script language='javascript'>"."alert('Account created successfully! Click Profile to set up!');"."window.location.href='http://project-olgadiomina668508.codeanyapp.com/webProject/#prof';"."</script>";
            //"$(document).ready(function(){ $('#profile').fadeIn() });"."</script>";
      }
      else{
          echo "<script language='javascript'>"."alert('Please complete reCaptch challenge!');"."window.location.href='http://project-olgadiomina668508.codeanyapp.com/webProject/'; </script>";
    }
  }  
?>
<?php
   if (isset($_POST['signup-btn'])){
        $url='https://www.google.com/recaptcha/api/siteverify';
        $privatekey="6LcrxQ0UAAAAAK-AyNQeUBtr6i2P8v0jeB3KVMPp";

        $response=file_get_contents($url."?secret=".$privatekey."&response=".$_POST['g-recaptcha-response']."&remoteip=".$_SERVER['REMOTE_ADDR']);  
     $data=json_decode($response);

        if(isset($data->success) AND $data->success==True){
     //if($data != null) {     
     //when user is verified
            if(isset($_SERVER['HTTP_REFERER'])){
                header("Location: ".$_SERVER['HTTP_REFERER']);
              }
              else{
                echo "Error";
              }
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

        }
        else{
          echo "error";
        }
    } 
/*//Using SimpleXML to update xml data

//prevent form redirect
if(isset($_SERVER['HTTP_REFERER'])){
  header("Location: ".$_SERVER['HTTP_REFERER']);
}
else{
  echo "Error";
}
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
file_put_contents('/home/cabox/workspace/webProject/user.xml',$xml->asXML());*/
?>
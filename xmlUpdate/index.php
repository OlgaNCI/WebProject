<?php
/*
 *Using SimpleXML to update xml data
 */
//prevent form redirect
if(isset($_SERVER['HTTP_REFERER'])){
  header("Location: ".$_SERVER['HTTP_REFERER']);
}
else{
  echo"Error";
}

//store form date in variables
$author = $_POST["author"];
$title = $_POST["title"];
$genre = $_POST["genre"];
$price = $_POST["price"];

//check if xml file exists
if(file_exists('books.xml')){
  //load date from xml file into xml variable
  $xml = simplexml_load_file('books.xml');
  //add new book element to variable
  $newChild = $xml->addChild('book');
  $newChild->addChild('author', $author);
  $newChild->addChild('title', $title);
  $newChild->addChild('genre', $genre);
  $newChild->addChild('price', $price);
  
}
else{
  exit('Failed to open books.xml');//error message
}

//save new date from variable back into an xml file
file_put_contents('/home/cabox/workspace/xmlUpdate/books.xml',$xml->asXML());
?>
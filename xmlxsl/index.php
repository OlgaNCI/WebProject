<?php
  //Load our xml source
  $xml = new DOMDocument;
  $xml->load('books.xml');

  //Load our xsl source
  $xsl = new DOMDocument;
  $xsl->substituteEntities = true; //don't decode
  $xsl->load('books.xsl');
  
  //configure the transformer
  $proc = new XSLTProcessor;

  $proc->importStyleSheet($xsl);

  //transform xml and output result
  echo $proc->transformToXML($xml);


?>
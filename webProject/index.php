<?php
//load xml source
$xml= new DOMDocument;
$xml->load('user.xml');

//Load our xsl source
$xsl= new DOMDocument;
$xsl->substituteEntities=true; //don't decode
$xsl->load('user.xsl');

//Configure the transformer
$proc = new XSLTProcessor;

$proc->importStyleSheet($xsl);

//transform xml and output result
echo $proc->transformToXML($xml);

?>
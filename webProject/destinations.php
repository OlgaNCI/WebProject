<?php
//load xml source
$xml= new DOMDocument;
$xml->load('destinations.xml');

//Load our xsl source
$xsl= new DOMDocument;
$xsl->substituteEntities=true; //don't decode
$xsl->load('destinations.xsl');

//Configure the transformer
$proc = new XSLTProcessor;

$proc->importStyleSheet($xsl);

//transform xml and output result
echo $proc->transformToXML($xml);

?>
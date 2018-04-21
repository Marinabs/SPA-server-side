<?php
$xmlDoc = new DOMDocument();
$xmlDoc->load("article2.xml");

// Load XSL file
$xsl = new DOMDocument;
$xsl->load('article2.xsl');

// Configure the transformer
$proc = new XSLTProcessor;

// Attach the xsl rules
$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xmlDoc);

?>
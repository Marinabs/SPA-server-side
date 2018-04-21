<?php
$xmlDoc = new DOMDocument();
$xmlDoc->load("article1.xml");

// Load XSL file
$xsl = new DOMDocument;
$xsl->load('article1.xsl');

// Configure the transformer
$proc = new XSLTProcessor;

// Attach the xsl rules
$proc->importStyleSheet($xsl);

echo $proc->transformToXML($xmlDoc);

/* $x = $xmlDoc->documentElement;
foreach ($x->childNodes AS $item) {
  print  $item->nodeValue. "<br>";
} */
?>
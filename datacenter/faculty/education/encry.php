<?php
function encrypt($text){
	$bin = array();
    for($i=0; strlen($text)>$i; $i++)
    	$bin[] = ord($text[$i]);	
    return implode(' ',$bin);
}

function decrypt($bin){ 
$text = array();
	$bin = explode(" ", $bin);
	for($i=0; count($bin)>$i; $i++)
		$text[] = chr($bin[$i]);
		
	return implode($text);
}
$a=encrypt("hello");
echo $a,"<br>";
$b=decrypt($a);
echo $b;
?>
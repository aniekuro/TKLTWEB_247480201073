<?php
do{
$x=rand(1,100);
$y=rand(1,100);

}while($x<=$y);

$tong=$x+$y;
$hieu=$x-$y;
$tich=$x*$y;
$thuong=$x/$y;
$dư=$x%$y;
//a)
echo "$x+$y= " . $tong . "<br>";
echo " $x-$y=" . $hieu . "<br>";
echo "$x*$y= " . $tich . "<br>";
echo "$x/$y= " . $thuong . "<br>";
echo "$x/$y=(dư) " . $dư . "<br>";
//b)

//c)

?>
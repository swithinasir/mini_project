<?php
/* The users table consists of three fields:
 *   user_id
 *   username
 *   password.

include("../conn/config.php");
$result = mysqli_query($con, "SELECT * FROM dept");

echo mysqli_field_name($res, 0) . "\n";
echo mysqli_field_name($res, 2);
 */
?>
<?php
function hello() {
    print "<h1>HELLO!</h1>";
    print "<p>Welcome to my web site</p>";
}

function printBreak($text) {
    print "$text<br>";
}

function addNumbers($num1, $num2) {
     return $num1 + $num2;
}

hello();
printBreak("This is a line");
print addNumbers(3.75, 5.645);
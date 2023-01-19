
<?php  
// PHP code to get the Fibonacci series
// **FROM**  https://www.geeksforgeeks.org/php-fibonacci-series/
// **FROM**  https://www.geeksforgeeks.org/php-fibonacci-series/
// **FROM**  https://www.geeksforgeeks.org/php-fibonacci-series/
// Recursive function for fibonacci series.
function Fibonacci($number){
      
    // if and else if to generate first two numbers
    if ($number == 0)
        return 0;    
    else if ($number == 1)
        return 1;    
      
    // Recursive Call to get the upcoming numbers
    else
        return (Fibonacci($number-1) + 
                Fibonacci($number-2));
}
  
// Driver Code
$number = 10;
for ($counter = 0; $counter < $number; $counter++){  
    echo Fibonacci($counter),' ';
    // 0 1  1 2 3 5 8 13 21 34
}
// **FROM**  https://www.geeksforgeeks.org/php-fibonacci-series/
// **FROM**  https://www.geeksforgeeks.org/php-fibonacci-series/
// **FROM**  https://www.geeksforgeeks.org/php-fibonacci-series/
?>

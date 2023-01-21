[asm](fibs/fib.asm)
```asm
Include Irvine32.inc
 .data
 limit DWORD 12
 count DWORD 2
 .code
 main PROC
xor eax,eax
		xor ebx,ebx
	.if limit==0
		jmp L2
	.ENDIF
			mov eax,0
			call writeint
			call crlf
			mov eax,1
			call writeint
			call crlf
			mov edx,eax
			add eax,ebx
			mov esi,2
			sub limit,esi
			mov ecx,limit
	
		L1:
			mov edi,count
			cmp edi,limit
		je L2
			mov edx,eax
			add eax,ebx
			call writeint
			call crlf
			mov ebx,edx
			inc edi
		loop L1
		
		L2:
		exit
 main ENDP
 END main
```

----

[cbl](fibs/fib.cbl)
```cbl
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SAMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

         77 fib1 pic 999.
         77 fib2 pic 999.
         77 fib3 pic 999.
         77 i pic 99.
         77 fibst pic XXX.
         77 res pic X(64).

       PROCEDURE DIVISION.
         move 0 to i
         move 0 to fib1
         move 1 to fib2
         move "" to res
         perform until i greater than 15
           add fib1 to fib2 giving fib3
           move fib2 to fib1
           move fib3 to fib2
           move fib1 to fibst
           string res   DELIMITED BY SPACE
                  fibst DELIMITED BY SIZE
                  ","   DELIMITED BY SIZE into res
           add 1 to i
         end-perform.
         display res "..."
         stop run.
```

----

[cpp](fibs/fib.cpp)
```cpp

// int main(int argc, char *argv[]) { /* ... */ }

// argc (ARGument Count) is int and stores number of command-line 
// arguments passed by the user including the name of the program.
 // So if we pass a value to a program, value of argc would be 2  
// (one for argument and one for program name)

// The value of argc should be non negative.
// argv(ARGument Vector) is array of character pointers listing all
// the arguments.
// If argc is greater than zero, the array elements from argv[0] to 
// argv[argc-1] will contain pointers to strings.
// Argv[0] is the name of the program , After that till argv[argc-1] 
// every element is command -line arguments.

// int main(int argc, char *argv[]) { /* ... */ }
#include <iostream>
void dogYearsToHuman(int dogAge) {
  
  int earlyYears, laterYears, humanYears; 
  earlyYears = 21;
  //first two years of my dogs' life
  
  laterYears = (dogAge - 2) * 4;
  //for my dogs' following years
  
  humanYears = earlyYears + laterYears;
  //for my dogs' total human years

  std::cout << "My name is Oreo! Ruff ruff, I am " << humanYears << " years old in human years. 
";
  //output statement that gives user their dogs calculated age in human years

}
int main(int argc, char const *argv[])
{
    
    // get input from command line arguments (argv)
    const char* n = argv[1];
    
    // convert const char* to int using std::stoi()
    int x = std::stoi(n); 
    dogYearsToHuman(x); 
    return 0;
}


// /opt/homebrew/Cellar/gcc/12.2.0/bin/c++-12
```

----

[cs](fibs/fib.cs)
```cs
using System;
namespace LogicalPrograms
{
    public class Program
    {
        public static void Main()
        {
            int a = 0, b = 1, c, n = 7;
            n = int.Parse(Console.ReadLine());
            if(n < 2)
            {
                Console.Write("Please Enter a number greater than two");
            }
            else
            {
                for(int i = 2; i < n; i++)
                {
                    c = a + b;
                    Console.Write(c + " ");
                    a = b;
                    b = c;
                }
            }
            Console.ReadKey();
        }
    }
}
```

----

[exs](fibs/fib.exs)
```exs
defmodule Fib do 
  def fib(0) do 0 end
  def fib(1) do 1 end
  def fib(n) do fib(n-1) + fib(n-2) end
end

IO.puts Fib.fib(10)
```

----

[go](fibs/fib.go)
```go
package main
import (
	"fmt"
)

func main() {

	var a, b, c, n int = 0, 1, 1, 2
	for i := 1; i < n + 1; i++ {
		c = a + b
		a = b
		b = c
		fmt.Println(c)
	}
}
```

----

[java](fibs/fib.java)
```java
// Dynamic Programming approach for
// Fibonacci Series

class fibonacci {

	// Function to find the fibonacci Series
	static int fib(int n)
	{

		// Declare an array to store
		// Fibonacci numbers.
		// 1 extra to handle case, n = 0
		int f[] = new int[n + 2];

		int i;

		// 0th and 1st number of
		// the series are 0 and 1
		f[0] = 0;
		f[1] = 1;

		for (i = 2; i <= n; i++) {

			// Add the previous 2 numbers
			// in the series and store it
			f[i] = f[i - 1] + f[i - 2];
		}

		// Nth Fibonacci Number
		return f[n];
	}

	public static void
	main(String args[])
	{
		// Given Number N
		int N = 10;

		// Print first 10 term
		for (int i = 0; i < N; i++)
			System.out.print(fib(i) + " ");
	}
}
```

----

[js](fibs/fib.js)
```js
let n = 7
let a = 0, b = 1, c = 1

console.log('Fibonacci Series:');

for (let i = 1; i <= n; i++) {
    c = a + b;
    a = b;
    b = c;
    console.log(c);
}
```

----

[php](fibs/fib.php)
```php

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
```

----

[py](fibs/fib.py)
```py
# Program to display the Fibonacci sequence up to n-th term

n = 7
arr = [0, 1] 

for i in range(n - 2):
    arr.append(arr[-1] + arr[-2])

print(arr)
```

----

[rb](fibs/fib.rb)
```rb
def fibonacci( n )
    return  n  if n <= 1 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end 
puts fibonacci( 10 )
# => 55

# https://stackoverflow.com/questions/12178642/fibonacci-sequence-in-ruby-recursion
```

----

[scala](fibs/fib.scala)
```scala
def fib2(n: Long): Long = {
  var first = 0
  var second = 1
  var count = 0

  while(count < n){
    val sum = first + second
    first = second
    second = sum
    count = count + 1
  }

  return first
}
```

----


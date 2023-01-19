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

#include <iostream>
int main (){
    int a = 0, b = 1, c = 1;
    int n = 7; 
    for (int i=0; i<n; i++){
        c = a + b; 
        a = b; 
        b = c; 
        std::cout << c << "
";
    }
}
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


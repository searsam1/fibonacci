[*fib.cpp](/fib.cpp)*
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
[*fib.cs](/fib.cs)*
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
[*fib.go](/fib.go)*
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
[*fib.java](/fib.java)*
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
[*fib.js](/fib.js)*
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
[*fib.py](/fib.py)*
```py
# Program to display the Fibonacci sequence up to n-th term

n = 7
arr = [0, 1] 

for i in range(n - 2):
    arr.append(arr[-1] + arr[-2])

print(arr)
```

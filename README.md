# fibonacci

## python
```python
# Program to display the Fibonacci sequence up to n-th term

n = 7 
arr = [0, 1] 

for i in range(n - 2):
    arr.append(arr[-1] + arr[-2])

print(arr)
# [0, 1, 1, 2, 3, 5, 8]
```

```cpp

#include <iostream>
int main (){
    int a = 0, b = 1, c = 1;
    int n = 7; 
    for (int i=0; i<n; i++){
        c = a + b; 
        a = b; 
        b = c; 
        std::cout << c << "\n";
    }
}
```

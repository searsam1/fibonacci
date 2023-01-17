# fibonacci

## python
```python
# Program to display the Fibonacci sequence up to n-th term

n = 7 
arr = [0, 1] 

for i in range(n - 2):
    arr.append(arr[-1] + arr[-2])

print(arr)
```

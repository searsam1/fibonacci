let n = 7
let a = 0, b = 1, c = 1

console.log('Fibonacci Series:');

for (let i = 1; i <= n; i++) {
    c = a + b;
    a = b;
    b = c;
    console.log(c);
}

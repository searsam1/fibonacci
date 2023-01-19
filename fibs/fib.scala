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
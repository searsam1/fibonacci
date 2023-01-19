def fibonacci( n )
    return  n  if n <= 1 
    fibonacci( n - 1 ) + fibonacci( n - 2 )
end 
puts fibonacci( 10 )
# => 55

# https://stackoverflow.com/questions/12178642/fibonacci-sequence-in-ruby-recursion

require 'benchmark'
def fibonacci_iterative(n)
  fibonacci = [0,1,1,2,3,5,8,13,21,34]
  if n == 1
    return 1
  elsif n == 0
    return 0
  else
    fibonacci[n-1] + fibonacci[n-2]
  end
end

def fibonacci_recursive(n)
  if n == 1
    return 1
  elsif n == 0
    return 0
  else
    return fibonacci_recursive(n-1) + fibonacci_recursive(n-2)
  end
end




p Benchmark.measure{fibonacci_iterative(10) * 1000}
p Benchmark.measure{fibonacci_recursive(10) * 1000}


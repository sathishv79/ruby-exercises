# Example of yield
# when a method has yield in it,
# the caller should pass in a block of code as parameter when calling the method
# and the method executes that code block when it encounters the yield statement

def two_times
  yield
  yield
end

two_times { puts "Hello" }

# when the method yields to the block of code
# it can pass in a parameters to the block of code
# below example computes the Fibonacci series up to the given max

def fib_up_to(max)
  i1, i2 = 1, 1
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
  puts
end

fib_up_to(1000) { |f| print f, " " }

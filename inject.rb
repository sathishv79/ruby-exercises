# First time inject is called the parameter is set as the value of product,
# the value of element is set to the first element in the collection,
# for subsequent calls, sum is set to the value returned from the block
def product(arr)
  arr.inject(1) {|product, element| puts 'multiplying'; product * element}
end

# Inject can also be called without the parameter, as in below example,
# in which case the value of sum is set to value of first element in collection
# and the iteration starts with the second element in the collection,
# so the iteration happens n-1 times, where n is number of items in collection
def sum(arr)
  arr.inject {|sum, element| puts 'summing';sum + element}
end

# In Ruby, mathematical operations like addition, multiplication are
# simply methods in numbers,
# and :+ is the symbol that denotes the method +
# and :* is the symbold that denotes the method *
def product_shortened(arr)
  arr.inject(:*)
end

def sum_shortened(arr)
  arr.inject(:+)
end

arr = [1, 2, 3, 4, 5]
print "Sum of #{arr} is ", sum(arr), "\n"
print "Product of #{arr} is ", product(arr), "\n"
print "Product of #{arr} is ", product_shortened(arr), "\n"
print "Product of #{arr} is ", sum_shortened(arr), "\n"

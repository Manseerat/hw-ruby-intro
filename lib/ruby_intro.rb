# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.nil? ? 0 : arr.reduce(0, :+)
  
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.nil? ? 0 : sum(arr.sort[arr.size > 1 ? -2 : -1*arr.size, 2])
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.nil? or arr.size<2 ? false : arr.combination(2).any? {|f, s| f + s == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
   "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
   /^\w/.match(s) != nil and /^[AEIOUaeiou]/.match(s) == nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
   /^([10]*00|0)$/.match(s) != nil
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError.new("ISBN is empty") if isbn.length == 0
    @isbn = isbn
    raise ArgumentError.new("Price is negative or equal to zero") if price <= 0
    @price = price
  end

  def price_as_string
    "$%.2f" % price
  end
end


# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  d=0
  arr.each{ |x| d=d+x}
  return d
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
  n1 = arr.max
  arr.each do
    |x|
    if x==n1
      x=-99
      break
    end
  end
  n2 = arr.max
  return n1+n2
  end
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  else
    for num1 in arr
      for num2 in arr
        if (n-num1) == num2 || n==num2
          return true
        end
      end
    end
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    
    if isbn.length==0 || price <=0
      raise ArgumentError
    end
  end
  
  
  
  def price_as_string
    sd= '%.2f' % @price
    return "$"+sd.to_s
  end
end

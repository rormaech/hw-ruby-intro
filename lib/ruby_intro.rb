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
    n1 = arr.max(2)
    
    return n1[0]+n1[1]
  end
end

def sum_to_n? arr, n
  if arr.length == 0 || arr.length == 1
    return false
  else
    
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
  num = s.to_i(2)
  
  
  if s=='' || s=~ /[^01]/
    return false
  end
  
  if num%4 == 0
    return true
  else
    return false
  end
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

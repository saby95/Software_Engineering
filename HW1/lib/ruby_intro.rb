# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.length == 0
    return 0
  end
  sum = 0
  arr.each { |a| sum+=a}
  return sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  return arr.sort[-1] + arr.sort[-2]
end

def sum_to_n? arr, n
  dict = {}
  for i in 0..arr.length-1
    if dict.key?(arr[i])
      return true
    end
    dict[n-arr[i]] = i
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name.to_s
end

def starts_with_consonant? s
  if s.length == 0
    return false
  end
  arr = ["A", "E", "I", "O", "U"]
  first = s.to_s[0].upcase
  if arr.include? first
    return false
  end
  if first =~ /[[:alpha:]]/
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if not(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  num = s.to_i(2)
  if num%4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if @price <= 0 or @isbn.empty?
      raise ArgumentError
    end
  end
    
  def price_as_string
      return "$#{'%.2f' % @price}"
  end
  
end

# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # (5..10).inject { |sum, n| sum + n }            #=> 45
  arr.inject(0, :+)
end

def max_2_sum(arr)
 arr.sort.last(2).sum
end

def sum_to_n?(arr, n)
  values = Hash.new
  
  arr.each{|val|
    seek = n - val
    
    if(values.has_key?(seek))
     return true
    end
    
    values[val] = 1
  }
  return false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  # any char except aei.. matches 's', also ignore cases
  /^[a-z&&[^aeiou]]/i.match?(s)
  
end

def binary_multiple_of_4?(s)
  # only 0,1s
  if /^[01]+$/.match?(s)
    dig = s.to_i(2)
    if dig % 4 == 0
      return true
    end
  end
  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn.length == 0 || price <=0
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    "$" + "%.2f" % price
  end
  
  
end

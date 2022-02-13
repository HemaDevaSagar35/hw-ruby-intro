# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total_sum = 0
  l = arr.length
  for i in 0...l
    total_sum = total_sum + arr[i]
  end
  return total_sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length > 1
    top_2 = arr.max(2)
    return top_2.sum
  elsif arr.length == 1
    return arr[0]
  else
    return 0
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  len_arr = arr.length
  if len_arr > 1
    for i in 0...len_arr - 1
      for j in i+1..len_arr - 1
        temp_sum = arr[i] + arr[j]
        if temp_sum == n
          return true
        end
      end
    end
    return false
  else
    return false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  vowel = ['a', 'e', 'i', 'o', 'u']
  s_len = s.length
  if s_len > 0
    if s[0].match?(/[A-Za-z]/)
      return !(vowel.include?(s[0].downcase))
    else
      return false
    end
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.length > 0
    if s.match?(/[2-9A-Za-z]/)
      return false
    else
      dec_num = s.to_i(2)
      return dec_num.modulo(4).eql? 0
    end
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    
    if (@isbn.length == 0) or (@isbn == ' ') or (@price <= 0)
      raise ArgumentError.new
    end
    
  end
  
  def price_as_string
    return '$' + '%.2f' % @price
  end
end

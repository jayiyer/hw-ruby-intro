# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.empty?
    return 0
  end
  result = 0
  for i in 0..arr.length-1
    result += arr[i]
  end
  return result
end

def max_2_sum arr
  if arr.empty?
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  max_value = arr.sort[-1]
  second_value = arr.sort[-2]
  result = max_value + second_value
  return result
end

def sum_to_n? arr, n
  if arr.empty?
    if n != 0
      return false
    end
    return true
  end
  if arr.length == 1
    return false
  end
  !!arr.combination(2).detect{|x, y| x + y == n}
end

# Part 2

def hello(name)
  return "Hello, #{name}" 
end

def starts_with_consonant? s
  if s.empty?
    return false
  end
  #puts "s[0] is not empty"
  if ["A", "E", "I", "O", "U"].include?(s[0])
    return false
  end
  #puts "s[0] is not an uppercase vowel"
  if ["a", "e", "i", "o", "u"].include?(s[0])
    return false
  end
  #puts "s[0] is not a lowercase vowel"
  lowercase_all_letters = ('a'..'z').to_a
  uppercase_all_letters = ('A'..'Z').to_a 
  if !(lowercase_all_letters.include?(s[0])) || !(uppercase_all_letters.include?(s[0]))
    return false
  end
  #puts "s[0] is a consonant"
  return true
end

def binary_multiple_of_4? s
  if s.empty? or s =~ /[^01]/
    return false
  end
  str_to_int = s.to_i(2)
  if str_to_int % 4 == 0
    return true
  end
  return false
end

# Part 3

class BookInStock
  @isbn, @price
  
  def initialize(isbn, price)
    raise ArgumentError, "ISBN cannot be empty" if isbn.empty?
    raise ArgumentError, "Price must be positive" if price <= 0
    @isbn  = isbn
    @price = price
  end
  
  def price_as_string
    price_str = @price.to_s
    price_str = price_str.number_to_currency
end

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
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

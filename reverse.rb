def palindrome_iterative(str)
  ((str.length / 2) + 1).times do |i|
    return false if str[i] != str[-i-1]
  end
  true
end

def palindrome_recursive(str)
  return true if str.length <= 1
  (str[0] == str[-1]) && palindrome_recursive(str[1..-2])
end

def reverse_iterative(str)
  new_str=""
  str.length.times do |i|
    p i
    new_str << str[-i-1]
  end
  new_str
end

def reverse_recursive(str)
  return str if str.length <= 1
  str[-1] + reverse_recursive(str[0..-2])
end

p palindrome_recursive("racecar") # true
p palindrome_recursive("civic") # true
p palindrome_recursive("lucas") # false
p palindrome_recursive("madam i'm adam") # false

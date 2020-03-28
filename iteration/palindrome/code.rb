def is_palindrome(str)
  return false if str.empty?

  str = str.downcase.delete("- ,!'")
  str == str.reverse
end

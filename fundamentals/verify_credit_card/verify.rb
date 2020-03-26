def is_visa?
  card.delete(" ")[0] == "4"

end

def is_mastercard?
  card.delete(" ")[0] == "5"
end

def valid?(card)
  digits = card.delete(" ").split("").map { |digit| digit.to_i }
  return false if digits.empty?

  sum = luhn_sum(digits)
  (sum % 10).zero?
end

def luhn_sum(digits)
  sum = 0
  digits.each_with_index do |digit, index|
    if index.even?
      sum += digit * 2 >= 10 ? (digit * 2) - 9 : digit * 2
    else
      sum += digit
    end
  end
  sum
end

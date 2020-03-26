def colorful?(number)
  if number.is_a?(Integer)
    array = number.digits.reverse
    final_array = []

    array.each.with_index do |num, index|
      final_array.push(num)
      i = index + 1
      while i < array.length
        num *= array[i]
        final_array.push(num)
        i += 1
      end
    end
    final_array.uniq == final_array
    else false
  end

end

puts colorful?(236)

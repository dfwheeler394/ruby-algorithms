def array_to_hash(array)
  # TODO: implement the method :)
  new_hash = {}

  array.each_with_index do |element, index|
    key = block_given? ? yield(index) : index.to_s
    new_hash[key] = element
  end
  new_hash
end

puts array_to_hash(['a', 'b', 'c'])

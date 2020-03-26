def ip_to_num(ip_address)
  binaries = ip_address.split('.').map do |num| # loop notation with do/end
    num.to_i.to_s(2).rjust(8, '0')
    binaries.join.to_i(2)
  end
end

def num_to_ip(number)
  # convert to array of base 10 decimal numbers as strings
  decimals = number.to_s(2).rjust(32, '0').scan(/.{8}/).map { |num| num.to_i(2) } #single-line loop notation
  # join with decimal
  decimals.join('.')
end

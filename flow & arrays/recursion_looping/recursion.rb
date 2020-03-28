def sum_recursive(min, max)
  return -1 if min > max

  if min == max
    max
  else
    min + sum_recursive(min + 1, max)
  end
end

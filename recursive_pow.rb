def my_pow(x, n)
  return 1 if n == 0
  my_power_helper(x, n)
end

def my_power_helper(x, n, acc=1, counter=0)
  acc *= x
  counter += 1
  return acc if counter == n.abs
  my_power_helper(x, n, acc, counter)
end

def my_pow_simple(x, n)
  return 1 if n == 0
  x * my_pow(x, n - 1)
end

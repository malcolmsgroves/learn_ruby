#write your code here
def add(one, two)
  return one + two
end

def subtract(one, two)
  return one - two
end

def sum(arr)
  sum = 0
  arr.each do |i|
    sum += i
  end
  return sum
end

def multiply(*arg)
  product = 1
  arg.each do |i|
    product = product * i
  end
  puts product
  return product
end

def power(*arg)
  return arg[0]**arg[1]
end

def factorial(num)
  product = 1
  if(num == 0)
    return product
  end
  (1..num).each do |i|
    product = product * i
  end
  return product
end

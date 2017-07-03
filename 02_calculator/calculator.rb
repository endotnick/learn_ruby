#write your code here

def add(num1, num2)
    num1 + num2
end

def subtract(num1, num2)
    num1 - num2
end

def sum(nums)
    sum = 0
    nums.each do |num|
        sum += num
    end
    sum
end

def multiply(*nums)
    nums.reduce(1, :*)
end

def power(num1, num2)
    num1 ** num2
end

def factorial(num)
    (1..(num.zero? ? 1 : num)).inject(:*)
end

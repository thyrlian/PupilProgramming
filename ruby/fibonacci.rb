# Fibonacci number
# Fibonacci-Folge
# 斐波那契数列
# ==================================================
# def fibonacci(n)
#   if (n == 0)
#     return 0
#   elsif (n == 1)
#     return 1
#   else (n > 1)
#     return fibonacci(n-1) + fibonacci(n-2)
#   end
# end

def fibonacci(n)
  if (n < 2)
    return n
  else
    return fibonacci(n-1) + fibonacci(n-2)
  end
end

# puts fibonacci(0)
# puts fibonacci(1)
# puts fibonacci(2)
# puts fibonacci(13)
# puts fibonacci(35)
puts fibonacci(50)

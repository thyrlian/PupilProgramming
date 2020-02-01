# Prime number
# Primzahl
# 质数 / 素数
# ==================================================
def prime_number(number)
  result = true
  (2..(number - 1)).each do |n|
    remainder = number % n
    # puts "#{number} % #{n} = #{remainder}"
    if remainder == 0
      result = false
      puts "#{number} % #{n} = #{remainder}"
    end
  end
  return result
end

if prime_number(1111111)
  puts "☺ Primzahl!"
else
  puts "☹ Zusammengesetzte Zahl :("
end

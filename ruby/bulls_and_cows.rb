# Bulls and Cows
# Bullen und Kühe
# 猜数字
# ==================================================
puts "Wilkommen bei Spielen - Bullen und Kühe 🐂 & 🐄"
puts "=" * 50
@secret = (0..9).to_a.sample(4)

def process_input()
  puts "Bitte tippst du 4 unterschiedliche Zahlen:"
  input = gets.gsub(/\s/, '')
  if input.length != 4
    return process_input()
  end
  input = input.split('')
  input.each do |x|
    if x.to_i.to_s != x
      return process_input()
    end
  end
  if input.uniq.size != input.size
    return process_input()
  end
  return input.map(&:to_i)
end

def play()
  bulls = 0
  cows = 0
  process_input().each_with_index do |g, gi|
    @secret.each_with_index do |s, si|
      if g == s
        if gi == si
          bulls += 1
        else
          cows += 1
        end
      end
    end
  end
  puts "#{bulls}A#{cows}B"
  if bulls == 4
    return true
  else
    return false
  end
  # return bulls == 4
end

times = 0
until play
  times += 1
  puts "Du hast #{times} mal geratet...\n\n"
  puts "-" * 30
  puts "\n"
end
puts "Du hast gewonnen! 🏆"

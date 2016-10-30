a = gets.strip.split().map(&:to_i)
b = gets.strip.split().map(&:to_i)
a_score = b_score = 0
for idx in 0...a.length
  if a[idx] > b[idx]
    a_score += 1
  elsif b[idx] > a[idx]
    b_score += 1
  end
end
puts "#{a_score} #{b_score}"

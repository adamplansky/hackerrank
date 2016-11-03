N = gets.strip.to_i
ary = []
N.times{  ary << gets.strip.split(" ").map(&:to_i).inject{|a,b| a + b} }
max_index = -1
res_ary = []
for i in 0...N
  max_val = Float::INFINITY
  for j in 0...N
    if ary[j] < max_val
      max_index = j
      max_val = ary[j]
    end
  end
  ary[max_index] = Float::INFINITY
  res_ary << max_index+1
end
puts res_ary.join(' ')

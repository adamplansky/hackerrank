inputs = []
T = gets.to_i
T.times { inputs << gets.chomp }


def solve num_ary
  for i in (num_ary.length-2).downto(0)
    if num_ary[i] < num_ary[i+1]
      for j in (num_ary.length-1).downto(0)
        if num_ary[i] < num_ary[j]
          num_ary[i], num_ary[j] = num_ary[j], num_ary[i]
          return num_ary[0..i] + num_ary[i+1..num_ary.length-1].reverse
        end
      end
    end
  end
  return "no answer"
end


inputs.each do |input|
  puts solve(input)
end

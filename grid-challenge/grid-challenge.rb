def check_is_sorted? ary
  len = ary.length
  for i in 0...len
    for j in 0...len-1
      return "NO" if ary[j][i] > ary[j+1][i]
    end
  end
  return "YES"
end
N = gets.strip.to_i
N.times{
  t = gets.strip.to_i
  ary = []
  t.times{
    ary << gets.strip.split("").sort
  }
  puts check_is_sorted?(ary)
}

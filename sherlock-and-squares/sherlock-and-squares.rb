T = gets.to_i #number of test cases
for  i in  0...T
  a,b = gets.split(" ").map(&:to_f)
  _start = Math.sqrt(a).ceil()
  _end = Math.sqrt(b).floor()+1
  puts _end - _start
end

N, Q = gets.split(" ").map(&:to_i)
seqList = Array.new(N){Array.new}
lastAns = 0
Q.times{
  option,x,y = gets.split(" ").map(&:to_i)
  seq = (x^lastAns) % N
  if option == 1
    seqList[seq] << y
  elsif option == 2
    lastAns = seqList[seq][y % seqList[seq].count()]
    puts lastAns
  end
}

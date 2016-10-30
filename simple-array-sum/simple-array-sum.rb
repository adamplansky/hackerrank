n = gets.strip.to_i
arr = gets.strip.split(' ').map(&:to_i)
puts arr.inject{|sum,number| sum+=number}

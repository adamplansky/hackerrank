N = gets.strip.to_i
ary = []
N.times do |index|
  ary << [gets.strip.split(" ").map(&:to_i).inject{|a,b| a + b}, index+1]
end
puts ary.sort.map{|val,index|index}.join(" ")

#!/bin/ruby

n = gets.strip.to_i
c = gets.strip
c = c.split(' ').map(&:to_i)
a = Array.new(105){0}
c.each do |sock|
  a[sock] += 1
end
result = 0
a.each do |elem|
  result += elem/2
end
puts result

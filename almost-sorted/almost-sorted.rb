# https://www.hackerrank.com/challenges/almost-sorted
n = gets.to_i # size of array
ary = gets.split(" ").map(&:to_i)

def ascending? arr
  arr.reduce { |a,b| a <= b ? b : (return false) }
  return true
end


def cons(arr)
  end_swap_index=start_swap_index = prev_elem = -1
  arr.each_with_index do |elem, index|
    start_swap_index = index if prev_elem > elem && start_swap_index==-1
    if start_swap_index != -1 && prev_elem < elem
      end_swap_index = index
      break
    end
    prev_elem = elem
  end

  arr[start_swap_index-1..end_swap_index-1] = arr[start_swap_index-1..end_swap_index-1].reverse
  return "yes\nreverse #{start_swap_index} #{end_swap_index}" if ascending?(arr)
  return "no"
end

def swap(arr)
  end_swap_index=start_swap_index = prev_elem = -1
  arr.each_with_index do |elem, index|
    start_swap_index =  index - 1 if prev_elem > elem && start_swap_index == -1
    end_swap_index =  index  if prev_elem > elem && start_swap_index != -1
    prev_elem = elem
  end

  arr[start_swap_index], arr[end_swap_index] = arr[end_swap_index], arr[start_swap_index]
  return "yes\nswap #{start_swap_index+1} #{end_swap_index+1}" if ascending?(arr)
  return "no"
end

def doit arr
  if ascending? arr
    puts "yes"
    return
  end

  puts swap(arr) if arr.count < 3
  arr.each_cons(3) do |a,b,c|

    if a > b && b > c
      puts cons(arr)
      break
    elsif a > b
      puts swap(arr)
      break
    end

  end
end

doit(ary)

# frozen_string_literal: true

def create_arr(size)
  arr = []
  i = 0
  while i < size
    arr[i] = rand(0..99)
    i += 1
  end
  arr
end

puts create_arr(10).minmax

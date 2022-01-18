# frozen_string_literal: true

arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]

def walk(arr, &block)
  arr.each do |el|
    case el
    when Integer then block.call el
    else walk(el, &block)
    end
  end
end

puts "Исходный массив: #{arr}"
walk(arr) { |el| puts el }

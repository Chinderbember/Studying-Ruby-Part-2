# frozen_string_literal: true

class StringProcessor
  class << self
    # Метод возвращает первую строку из массива согласно алфавитному порядку и
    # индекс этой строки в массиве
    def highest_str(arr)
      min = arr[0]
      n = 0

      arr.each_with_index do |element, i|
        if element < min
          min = element
          n = i
        end
      end
      [min, n]
    end

    # Метод выстраивает массив строк в алфавитном порядке
    def alph_order(arr)
      arr_copy = arr.dup
      result_arr = []
      arr_copy.size.times do |i|
        pos_highest = highest_str(arr_copy).last
        result_arr[i] = arr_copy.slice!(pos_highest)
      end
      result_arr
    end
  end
end

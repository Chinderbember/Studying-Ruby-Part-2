# frozen_string_literal: true

class StringProcessor
  # Метод возвращает первую строку из массива согласно алфавитному порядку и
  # индекс этой строки в массиве
  def self.highest_str(arr)
    min = arr[0]
    n = 0
    i = 1

    while i < arr.size
      if arr[i] < min then n = i
                           min = arr[i] end
      i += 1
    end

    [min, n]
  end

  # Метод выстраивает массив строк в алфавитном порядке
  def self.alph_order(arr)
    result_arr = []
    i = 0
    k = arr.size
    while i < k
      pos_highest = StringProcessor.highest_str(arr).last
      result_arr[i] = arr.slice!(pos_highest)
      i += 1
    end
    result_arr
  end
end

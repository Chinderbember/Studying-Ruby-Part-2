# frozen_string_literal: true

arr = %i[first second third]

result_arr = arr.to_h { |el| [el, [1, 2, 3][arr.index(el)]] }
puts result_arr

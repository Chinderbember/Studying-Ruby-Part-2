# frozen_string_literal: true

arr = %w[first second third]

result_arr = arr.to_h { |el| [el.to_sym, ['Fst(1)', 'Snd(2)', 'Trd(3)'][arr.index(el)]] }
puts result_arr

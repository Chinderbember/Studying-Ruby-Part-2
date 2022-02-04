# frozen_string_literal: true

p arr = %w[first second third]

p (arr.each_with_object(['Fst(1)', 'Snd(2)', 'Trd(3)']) do |x, result_arr|
  result_arr[arr.index(x)] = [x.to_sym, result_arr[arr.index(x)]]
end).to_h

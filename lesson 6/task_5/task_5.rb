# frozen_string_literal: true

arr_fst = %w[red orange yellow green blue indigo violet]
arr_snd = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
result_arr = arr_fst.to_h { |el| [el.to_sym, arr_snd[arr_fst.index(el)]] }
puts result_arr

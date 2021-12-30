# frozen_string_literal: true

require_relative 'lib/arr_of_strings_processing'

arr = %w[Иванов Петров Сидоров Алексеева Казанцев
         Антропов Анисимова Кузнецов Соловьёв Кошкина]
puts StringProcessor.alph_order(arr)

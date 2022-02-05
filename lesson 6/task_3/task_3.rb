# frozen_string_literal: true

str = <<~HERE
  Возьмите текст этого задания и извлеките из него все слова, количество символов в которых
  больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.
HERE

prep_arr = str.downcase.split.map { |string| string.chomp('.').chomp(',') }
final_arr = (prep_arr.select { |string| string.size > 5 }).sort

puts "Количество слов, в которых символов больше 5: #{final_arr.size}"
puts final_arr

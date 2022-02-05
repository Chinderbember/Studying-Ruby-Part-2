# frozen_string_literal: true

str = <<~HERE
  Возьмите текст этого задания и извлеките из него все слова, количество символов в которых
  больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.
HERE

arr = (str.downcase.split.map { |string| string.chomp('.').chomp(',') }).select { |string| string.size > 5 }
puts "Количество слов, в которых символов больше 5: #{arr.size}"
puts arr.sort

# frozen_string_literal: true


str = <<here
Возьмите текст этого задания и извлеките из него все слова, количество символов в которых
больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.
here

arr = (str.downcase.split.map { |str| str.chomp('.').chomp(',') }).select {|str| str.size > 5}
puts "Количество слов, в которых символов больше 5: #{arr.size}"
puts arr.sort 
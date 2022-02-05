# frozen_string_literal: true

str = <<~HERE
  Возьмите текст этого задания и извлеките из него все слова, которые начинаются с символа
  'и'. Сформируйте из них список уникальных слов и выведите их в порядке увеличения
	количества символов в слове.
HERE

prep_arr = str.downcase.split.map { |string| string.chomp('.').chomp(',') }
final_arr = (prep_arr.select { |string| string[0] == 'и' }).uniq.sort_by { |str| str.size} 

puts final_arr

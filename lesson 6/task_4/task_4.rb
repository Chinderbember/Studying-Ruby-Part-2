# frozen_string_literal: true

str = <<~HERE
   Возьмите текст этого задания и извлеките из него все слова, которые начинаются с символа
   'и'. Сформируйте из них список уникальных слов и выведите их в порядке увеличения
  количества символов в слове.
HERE


prep_arr_fst = str.downcase.split.map { |string| string.chomp('.').chomp(',') }
prep_arr_snd = prep_arr_fst.select { |string| string[0] == 'и' }
final_arr = prep_arr_snd.uniq.sort_by(&:size)
puts final_arr

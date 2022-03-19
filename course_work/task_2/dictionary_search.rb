# frozen_string_literal: true

require_relative 'lib/dictionary'

str = ARGV[0]
# rubocop:disable Layout/LineLength
# Присвоение кажется бесполезным, но это нет так. Не знаю почему, но когда я пытался оставить здесь лишь вызов метода
# puts Dictionary.search(ARGV[0], 'lib/dictionary.txt'), то в консоли происходило приведённое ниже.
# Может это баг интерпретатора или я что-то не знаю. Надеюсь на ваш поясняющий комментарий.
#
# D:\Документы\coding\Ruby Basics part 2\practical exercises\course_work\task_2>ruby dictionary_search.rb слово
# D:/Документы/coding/Ruby Basics part 2/practical exercises/course_work/task_2/lib/dictionary.rb:7:in `gets': No such file or directory @ rb_sysopen - слово (Errno::ENOENT)
#         from D:/Документы/coding/Ruby Basics part 2/practical exercises/course_work/task_2/lib/dictionary.rb:7:in `gets'
#         from D:/Документы/coding/Ruby Basics part 2/practical exercises/course_work/task_2/lib/dictionary.rb:7:in `open_dict'
#         from D:/Документы/coding/Ruby Basics part 2/practical exercises/course_work/task_2/lib/dictionary.rb:12:in `search'
#         from dictionary_search.rb:5:in `<main>'
# rubocop:enable Layout/LineLength

ARGV.pop

puts Dictionary.search(str, 'lib/dictionary.txt')

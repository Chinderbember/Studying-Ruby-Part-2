# frozen_string_literal: true

print 'Введите цвета через пробел: '
colors_str = gets.chomp

loop do
  print 'Введите ещё 1 цвет или введите "stop" для прекращения ввода: '
  colors_extra = gets.chomp
  break if colors_extra == 'stop'

  colors_str = "#{colors_str} #{colors_extra}"
end

colors = colors_str.split(/\s+/)
colors.each_with_index { |x, i| puts "#{i + 1}.#{x}" }

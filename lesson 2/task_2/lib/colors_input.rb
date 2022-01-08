# frozen_string_literal: true

class Colors
  def self.input
    print 'Введите цвета через пробел: '
    colors_str = gets.chomp

    loop do
      print 'Введите ещё 1 цвет или введите "stop" для прекращения ввода: '
      colors_extra = gets.chomp
      break if colors_extra == 'stop'

      colors_str = "#{colors_str} #{colors_extra}"
    end

    colors_str.split(/\s+/)
  end
end

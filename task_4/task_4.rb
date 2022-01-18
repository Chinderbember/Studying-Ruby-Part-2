# frozen_string_literal: true

def fibonacci_el(number)
  case number
  when 0 then 0
  when 1 then 1
  else fibonacci_el(number - 2) + fibonacci_el(number - 1)
  end
end

def fibonaci_arr(number, &block)
  arr = []
  0.upto(number) { |i| arr << fibonacci_el(i) }
  block.call arr
end

print 'Введите порядковый номер числа Фиббоначи: '
fibonaci_arr(gets.chomp.to_i) { |arr| puts arr }

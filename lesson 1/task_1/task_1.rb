# frozen_string_literal: true

print 'Введите первое число: '
number1 = gets.to_i

number2 = 0
while number2.zero?
  print 'Введите второе число(не ноль): '
  number2 = gets.to_f
end

puts "Результат деления: #{number1 / number2}"

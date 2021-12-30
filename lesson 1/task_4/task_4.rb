# frozen_string_literal: true

# Метод возвращает массив с 2 строками в которых дата понедельника и воскресенья
# недели введённой даты
def weekdays(time)
  monday = time + (1 - time.wday) * 24 * 3600
  sunday = time + (7 - time.wday) * 24 * 3600
  monday_format = monday.strftime '%d.%m.%Y'
  sunday_format = sunday.strftime '%d.%m.%Y'
  [monday_format, sunday_format]
end

# Метод возвращает числа недели введённой даты в виде диапазона
def weekdays_format(time)
  monday_date, sunday_date = weekdays(time)
  "#{monday_date} —— #{sunday_date}"
end

puts weekdays_format(Time.new)

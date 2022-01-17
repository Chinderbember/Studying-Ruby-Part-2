# frozen_string_literal: true

require 'Date'

YEAR = Date.today.year

def week(week_number)
  monday = Date.commercial(YEAR, week_number, 1)
  week_dates = [monday]

  6.times do
    week_dates << week_dates.last.next
  end

  yield week_dates
end

print 'Введите номер недели: '
week(gets.chomp.to_i) { |week_dates| puts week_dates }

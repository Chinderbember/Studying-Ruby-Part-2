# frozen_string_literal: true

WEEK = %w[понедельник вторник среда четверг пятница суббота воскресенье].freeze

filtered_week = WEEK.select { |day| day[0] == 'с' }
p filtered_week

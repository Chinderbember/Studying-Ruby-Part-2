# frozen_string_literal: true

require_relative 'lib/week_class'

fst_wd = Week.new
fst_wd.assign_weekday

p fst_wd.weekday
# rubocop:disable Lint/Void
puts "Is is Monday? - #{fst_wd.each { 'monday' }}"
# rubocop:enable Lint/Void

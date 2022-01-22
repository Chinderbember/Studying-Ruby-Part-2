# frozen_string_literal: true

class Week
  WEEK = %w[Monday Tuesday Wednesday Thursday Friday Saturday Sunday].freeze

  def assign_weekday
    loop do
      print 'Enter name of weekday: '
      input = gets.chomp.capitalize
      if WEEK.include?(input)
        @weekday = input
        break
      else
        puts 'Wrong weekday name'
      end
    end
  end

  attr_reader :weekday

  def each
    weekday == yield.capitalize
  end
end

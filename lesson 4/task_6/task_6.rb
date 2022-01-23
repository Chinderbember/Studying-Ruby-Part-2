# frozen_string_literal: true

class Integer
  SEC_IN_MIN = 60
  MINS_IN_HOUR = 60
  HOURS_IN_DAY = 24
  SEC_IN_HOUR = SEC_IN_MIN * MINS_IN_HOUR
  SEC_IN_DAY = SEC_IN_HOUR * HOURS_IN_DAY
  def minutes
    self * SEC_IN_MIN
  end

  def hours
    self * SEC_IN_HOUR
  end

  def days
    self * SEC_IN_DAY
  end
end

puts 5.minutes
puts 2.hours
puts 1.days

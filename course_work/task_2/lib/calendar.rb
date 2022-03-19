# frozen_string_literal: true

require 'date'

class Calendar
  SIZE = 3
  WEEK_DAYS = %w[пн вт ср чт пт сб вс].freeze
  MONTHS = %w[Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь].freeze

  class << self
    def this_month
      today = Time.now.to_date
      today_month = today.mon
      today_year = today.year
      cweek_fst_day = Date.new(today_year, today_month, 1).cweek

      puts "     #{MONTHS[today_month - 1]} #{today_year}"
      month_cal_output(today_year, today_month, cweek_fst_day)
    end

    private

    def month_cal_output(today_year, today_month, cweek_fst_day)
      1.upto(7) do |wday|
        print WEEK_DAYS[wday - 1]
        date_of_output = Date.commercial(today_year, cweek_fst_day, wday)

        loop do
          print format("% #{SIZE}s", output_day(date_of_output, today_month))
          date_of_output += 7
          break if date_of_output.mon != today_month
        end

        puts
      end
    end

    def output_day(date, month)
      date.mon != month ? '' : date.mday.to_s
    end
  end
end

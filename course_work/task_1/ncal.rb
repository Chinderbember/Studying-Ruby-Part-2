require 'date'

SIZE = 3
WEEK_DAYS = %w[пн вт ср чт пт сб вс]
def this_month_cal
	today = Time.now.to_date
	today_month = today.mon 
	today_year = today.year
	cweek_fst_day = Date.new(today_year, today_month, 1).cweek
	1.upto(7) do |wday|
		print WEEK_DAYS[wday - 1]
		output_day = Date.commercial(today_year, cweek_fst_day, wday)
		loop do 
			if output_day.mon != today_month
				print " " * SIZE
			else
				print format("% #{SIZE}d", output_day.mday)
			end
			output_day += 7
			break if output_day.mon != today_month
		end
		puts
	end
end

this_month_cal
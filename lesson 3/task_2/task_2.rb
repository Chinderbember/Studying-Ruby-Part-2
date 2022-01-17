# frozen_string_literal: true

require 'Date'

YEAR = Date.today.year

def first_saturday(year)
  fst_day = Date.new(year, 1, 1)

  if (6 - fst_day.cwday).negative?
    fst_day + 6
  else
    fst_day + (6 - fst_day.cwday)
  end
end

def first_sunday(year)
  fst_day = Date.new(year, 1, 1)

  if (7 - fst_day.cwday).zero?
    fst_day
  else
    fst_day + (7 - fst_day.cwday)
  end
end

# rubocop:disable Metrics/AbcSize
def weekends(year)
  weekend_dates = [first_saturday(year), first_sunday(year)]

  loop do
    fst_cond = (weekend_dates[-2] + 7).year != year
    snd_cond = (weekend_dates[-1] + 7).year != year
    break if fst_cond || snd_cond

    weekend_dates << (weekend_dates[-2] + 7)
    weekend_dates << (weekend_dates[-2] + 7)
  end

  weekend_dates << (weekend_dates[-2] + 7) if (weekend_dates[-2] + 7).year == year

  yield weekend_dates
end

# rubocop:enable Metrics/AbcSize

weekends(YEAR) { |weekend_dates| puts weekend_dates }

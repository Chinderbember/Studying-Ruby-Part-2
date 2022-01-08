# frozen_string_literal: true

MONTHS = %w[январь февраль март апрель май июнь июль август сентябрь
            октябрь ноябрь декабрь].freeze

months_sizes = MONTHS.map(&:size)

shortest_and_longest = MONTHS.select { |month| months_sizes.minmax.include?(month.size) }

p shortest_and_longest

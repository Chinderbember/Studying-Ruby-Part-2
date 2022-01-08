# frozen_string_literal: true

arr = %w[cat dog tiger]

filtered_arr = arr.select { |x| x.include?('t') }
p filtered_arr

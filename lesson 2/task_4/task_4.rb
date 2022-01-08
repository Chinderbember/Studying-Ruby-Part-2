# frozen_string_literal: true

arr = %w[cat dog tiger]

changed_arr = arr.map(&:capitalize)
p changed_arr

# frozen_string_literal: true

require_relative 'lib/colors_input'

changed_colors = Colors.input.each_with_object([]) do |color, colors|
  colors << color unless colors.include?(color)
end

p changed_colors

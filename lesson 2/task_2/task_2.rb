# frozen_string_literal: true

require_relative 'lib/colors_input'
require_relative 'lib/arr_of_strings_processing'

changed_colors = Colors.input.each_with_object([]) do |color, colors|
  colors << color unless colors.include?(color)
end

p StringProcessor.alph_order(changed_colors)

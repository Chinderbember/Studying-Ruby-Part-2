# frozen_string_literal: true

class Array
  def my_select(&block)
    arr = []
    # rubocop:disable Style/For
    for el in self
      arr << el if block.call(el)
    end
    # rubocop:enable Style/For
    arr
  end
end

p [*1..10].my_select(&:odd?)

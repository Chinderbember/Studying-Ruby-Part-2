# frozen_string_literal: true

class Array
  def my_reduce(acc = nil, &block)
    # rubocop:disable Style/For
    if acc
      for el in self do acc = block.call(acc, el) end
    else
      acc = self[0]
      for el in self[1..] do acc = block.call(acc, el) end
    end
    # rubocop:enable Style/For
    acc
  end
end

block = ->(m, el) { m + el }
p [*1..12].my_reduce(&block)

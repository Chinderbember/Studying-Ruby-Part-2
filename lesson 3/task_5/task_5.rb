# frozen_string_literal: true

# Здесь не стал реализовывать итератор во всех коллециях с Enumerable, посчитав достаточным показать
# реализацию на примере одного класса, аналогично в задании 6 и 7
class Array
  def my_map(&block)
    arr = []
    # rubocop:disable Style/For
    for el in self
      arr << block.call(el)
    end
    # rubocop:enable Style/For
    arr
  end
end

block = proc { |x| x + 1 }

p [*1..10].my_map(&block)

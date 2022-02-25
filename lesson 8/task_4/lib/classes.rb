# frozen_string_literal: true

class Animals
end

# rubocop:disable Naming/ConstantName

_var, Chordates, Mammals, Primates, Hominids, People, HomoSapiens =

  [*1..6].each_with_object([Animals]) do |_klass, arr|
    arr << Class.new(arr.last)
  end

# rubocop:enable Naming/ConstantName

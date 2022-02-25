# frozen_string_literal: true

require_relative 'lib/classes'

[Animals, Chordates, Mammals, Primates, Hominids, People, HomoSapiens].each do |klass|
  p klass.new
  puts "#{klass}'s ancestors #{klass.ancestors}"
  puts
end

# frozen_string_literal: true

require_relative 'lib/factory_class'

5.times { Factory.build(:ball) }
11.times { Factory.build(:cube) }
27.times { Factory.build(:teddy_bear) }

puts "Total: #{Factory.total}"
puts Factory.offers

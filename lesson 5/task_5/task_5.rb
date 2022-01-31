# frozen_string_literal: true

require_relative 'lib/class_list'

list = List.new(*1..10)

10.times do |n|
  count = n + 1
  puts "#{count} - й метод: #{list.send("instance#{count}")}"
end

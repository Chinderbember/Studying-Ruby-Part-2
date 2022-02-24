# frozen_string_literal: true

require_relative 'lib/classes'

[User, Admin, Moderator].each_with_index do |klass, i|
  visiter = klass.new("surname #{i + 1}", "name #{i + 1}", "patronymic #{i + 1}")
  puts "Visiter #{i + 1}: "
  %i[surname name patronymic].each { |method| print "#{visiter.send(method)} " }
  puts
end

p Person.new
p Person.new

# frozen_string_literal: true

require_relative 'lib/classes'

[UsualUser, Author, Admin, Moderator].each do |klass|
  puts klass.new.say
  puts klass.new.to_s
end

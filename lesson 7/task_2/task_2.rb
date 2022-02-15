# frozen_string_literal: true

require_relative 'lib/user_class'

default_user = User.new do |user|
  user.surname = 'default surname'
  user.name = 'default name'
  user.patronymic = 'default patronymic'
  user.email = 'default email'
end

puts default_user.surname
puts default_user.name
puts default_user.patronymic
puts default_user.email

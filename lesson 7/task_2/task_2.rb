# frozen_string_literal: true

require_relative 'lib/user_class'

default_user = User.new do |user|
  user.surname = 'default surname'
  user.name = 'default name'
  user.patronymic = 'default patronymic'
  user.email = 'default email'
end

%i[surname name patronymic email].each { |method| puts default_user.send(method) }

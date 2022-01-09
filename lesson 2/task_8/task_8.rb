# frozen_string_literal: true

require_relative 'lib/user'

arr_users = []

10.times do |i|
  user = User.new
  user.assign_name("User#{i + 1}")
  user.assign_mark(rand(1..5))
  arr_users << user
end

users_size_f = arr_users.size.to_f
average = arr_users.reduce(0) { |avr, user| avr + user.mark / users_size_f }

best_users = arr_users.select { |user| user.mark > average }.map(&:name)

p best_users


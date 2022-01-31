# frozen_string_literal: true

require_relative 'lib/classes'

user_fst = Group::User.new
puts "Пользователь 1: #{user_fst.info}"

user_snd = Group::User.new('Симдянов Игорь Вячеславович')
puts "Пользователь 2: #{user_snd.info}"

group_fst = Group.new(user_fst, user_snd)
group_fst.each { |el| puts el }

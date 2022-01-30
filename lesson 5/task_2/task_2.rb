# frozen_string_literal: true

require_relative 'lib/user_class'

user_fst = User.new
puts "Пользователь 1: #{user_fst.info}"

user_snd = User.new('Симдянов Игорь Вячеславович')
puts "Пользователь 2: #{user_snd.info}"

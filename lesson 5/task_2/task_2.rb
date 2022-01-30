# frozen_string_literal: true

class User
  attr_accessor :info

  def initialize(info = 'default')
    @info = info
  end
end

user_fst = User.new
puts "Пользователь 1: #{user_fst.info}"

user_snd = User.new('Симдянов Игорь Вячеславович')
puts "Пользователь 2: #{user_snd.info}"

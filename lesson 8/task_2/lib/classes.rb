# frozen_string_literal: true

class User
  attr_accessor :surname, :name, :patronymic, :email

  def initialize(surname = name = patronymic = email = 'default')
    @surname = surname
    @name = name
    @patronymic = patronymic
    @email = email
  end

  def say
    self.class
  end

  alias to_s say
end

# rubocop:disable Naming/ConstantName

UsualUser, Author, Admin, Moderator = [*1..4].map do
  Class.new(User)
end

# rubocop:enable Naming/ConstantName

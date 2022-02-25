# frozen_string_literal: true

class Support
  attr_accessor :surname, :name, :patronymic

  def initialize(surname = 'default', name = 'default', patronymic = 'default')
    @surname = surname
    @name = name
    @patronymic = patronymic
  end
end

class Person < Support
  def self.new(surname = 'default', name = 'default', patronymic = 'default')
    super unless self == Person
  end
end

# rubocop:disable Naming/ConstantName

User, Admin, Moderator = [*1..3].map do
  Class.new(Person)
end

# rubocop:enable Naming/ConstantName

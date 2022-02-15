# frozen_string_literal: true

class User
  attr_accessor :surname, :name, :patronymic, :email

  def initialize
    yield self
  end
end

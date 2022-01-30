# frozen_string_literal: true

class User
  attr_accessor :info

  def initialize(info = 'default')
    @info = info
  end
end

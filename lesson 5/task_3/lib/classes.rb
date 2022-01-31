# frozen_string_literal: true

class Group
  attr_reader :users

  def initialize(*users)
    @users = users
  end

  def each(&block)
    @users.each(&block)
  end

  class User
    attr_accessor :info

    def initialize(info = 'default')
      @info = info
    end
  end
end

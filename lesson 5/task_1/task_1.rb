# frozen_string_literal: true

class Hello
  def initialize(destination)
    @destination = destination
  end

  def say
    "Hello, #{@destination}"
  end
end

hello = Hello.new('world')
puts hello.say

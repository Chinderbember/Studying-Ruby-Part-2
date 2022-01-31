# frozen_string_literal: true

class Foo
  def initialize(methods = {})
    @methods = methods
    @methods.each do |method, value|
      define_method method do 
        value
      end
    end
  end 
end
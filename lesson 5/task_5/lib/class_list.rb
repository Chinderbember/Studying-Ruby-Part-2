# frozen_string_literal: true

class List
  def initialize(*params)
    @count = 1
    params.each do |element|
      class << self
        attr_accessor "instance#{@count}".to_sym
      end
      self.send("instance#{@count}=", element)
      @count += 1
    end
  end
end
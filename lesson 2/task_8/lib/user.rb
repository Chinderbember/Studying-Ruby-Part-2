# frozen_string_literal: true

class User
  def assign_name(name)
    @name = name
  end

  def assign_mark(mark)
    @mark = mark
  end

  attr_reader :name, :mark
end

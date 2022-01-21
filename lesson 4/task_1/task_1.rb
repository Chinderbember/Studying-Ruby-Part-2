# frozen_string_literal: true

class Building
  def add_people(amount)
    @people += amount
  end

  def write_people(people)
    @people = people
  end
  attr_reader :people
end

building = Building.new
building.write_people(41)
puts building.people

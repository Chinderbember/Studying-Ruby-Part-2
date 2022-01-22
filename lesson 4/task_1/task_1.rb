# frozen_string_literal: true

class Building
  def assign_people(people)
    @people = people
  end

  attr_reader :people
end

building = Building.new
building.assign_people(43)
puts building.people

# frozen_string_literal: true

# rubocop:disable Style/ClassVars
class Factory
  @@total = 0
  @@teddy_bears = 0
  @@balls = 0
  @@cubes = 0

  class << self
    def create(object, objects_count)
      objects_count += 1
      @@total += 1
      [object, objects_count]
    end

    def build(input)
      case input
      when :teddy_bear
        object, @@teddy_bears = create(TeddyBear.new, @@teddy_bears)
      when :ball
        object, @@balls = create(Ball.new, @@balls)
      when :cube
        object, @@cubes = create(Cube.new, @@cubes)
      end
      object
    end

    def total
      @@total
    end

    def offers
      { teddy_bear: @@teddy_bears, ball: @@balls, cube: @@cubes }
    end
  end

  class TeddyBear
  end

  class Ball
  end

  class Cube
  end
end
# rubocop:enable Style/ClassVars

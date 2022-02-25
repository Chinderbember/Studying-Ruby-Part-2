# frozen_string_literal: true

# rubocop:disable Lint/MissingSuper
class Ship
end

class UnderwaterShip < Ship
end

class OnwaterShip < Ship
end

class NuclearSubmarine < UnderwaterShip
  attr_accessor :rockets, :torpedos

  def initialize(rockets: [], torpedos: [])
    @rockets = rockets
    @torpedos = torpedos
  end

  class Rocket
  end

  class Torpedo
  end
end

class ContainerShip < OnwaterShip
  attr_accessor :crane

  def initialize
    @crane = Crane.new
  end

  class Crane
  end
end

class CargoShip < ContainerShip
  attr_accessor :hold

  def initialize
    @hold = Hold.new
    super
  end

  class Hold
  end
end

class MillitaryTransport < ContainerShip
  attr_accessor :rockets

  def initialize(rockets: [])
    @rockets = Rocket.new
    super
  end

  class Rocket
  end
end

class OilShip < OnwaterShip
  attr_accessor :hold

  def initialize
    @hold = Hold.new
  end

  class Hold
  end
end

class RocketCruzer < OnwaterShip
  attr_accessor :rockets

  def initialize(rockets: [])
    @rockets = rockets
  end

  class Rocket
  end
end

# rubocop:enable Lint/MissingSuper

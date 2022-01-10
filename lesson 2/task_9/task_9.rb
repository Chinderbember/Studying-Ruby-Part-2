# frozen_string_literal: true

EARTH_MASS = 5.97 * 10**24 # В килограммах
PLANETS_AND_MASSES = { 'Земля' => EARTH_MASS,
                       'Меркурий' => EARTH_MASS * 0.055,
                       'Венера' => EARTH_MASS * 0.81,
                       'Марс' => EARTH_MASS * 1.075,
                       'Юпитер' => EARTH_MASS * 317.8,
                       'Сатурн' => EARTH_MASS * 95.2,
                       'Уран' => EARTH_MASS * 14.54,
                       'Нептун' => EARTH_MASS * 17.147,
                       'Плутон' => EARTH_MASS * 0.0022 }.freeze

arr_min_masses = PLANETS_AND_MASSES.values.min(3)
arr_min_planets = arr_min_masses.map { |mass| PLANETS_AND_MASSES.key(mass) }
puts "Три самых лёгких планеты: #{arr_min_planets}"

arr_max_masses = PLANETS_AND_MASSES.values.max(3)
arr_max_planets = arr_max_masses.map { |mass| PLANETS_AND_MASSES.key(mass) }
puts "Три самых тяжёлых планеты: #{arr_max_planets}"

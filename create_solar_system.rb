require 'colorize'

require_relative 'planet'
require_relative 'solar_system'

current = SolarSystem.new("Our Solar System")

mercury = Planet.new("Mercury", 0.06, 0.382, 57.9, "terrestrial", [])
venus = Planet.new("Venus", 0.86, 0.94, 108.2, "terrestrial", [])
earth = Planet.new("Earth", 1, 1, 149.6, "terrestrial", ["Luna"])
mars = Planet.new("Mars", 0.11, 0.532, 227.9, "terrestrial", ["Phobos", "Deimos"])
jupiter = Planet.new("Jupiter", 317.8, 11.209, 778.3, "gas giant", [67])
saturn = Planet.new("Saturn", 95.2, 9.449, 1427.0, "gas giant", [62])
uranus = Planet.new("Uranus", 14.6, 4.007, 2871.0, "ice giant", [27])
neptune = Planet.new("Neptune", 17.2, 3.883, 4497.1, "ice giant", [14])

current.add_planet(mercury)
current.add_planet(venus)
current.add_planet(earth)
current.add_planet(mars)
current.add_planet(jupiter)
current.add_planet(saturn)
current.add_planet(uranus)
current.add_planet(neptune)

#current.info
#puts current.compare_distance(mercury, earth)
#puts current.compare_distance(venus, mercury)

current.planet_query

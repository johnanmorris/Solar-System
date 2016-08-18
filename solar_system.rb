class SolarSystem
	attr_accessor :name

	def initialize(name)
		@name = name
		@planets = []
	end

	def add_planet(planet)
		@planets << planet
	end

	def compare_distance(planet_one, planet_two)
		# subtracts the value of dist_from_sun for planet_one from that of planet_two
		distance = planet_one.dist_from_sun - planet_two.dist_from_sun
		# distance is set to the absolute value, rounded to 5 places
		distance = distance.abs.round(5)
		return "The distance between #{planet_one.name.red.bold} and #{planet_two.name.red.bold} is approximately " + distance.to_s.red.bold + " million km."
	end

	def info
		# Puts the name of the solar system
		puts @name.light_red.bold
		# For each planet in the solar system (i.e., in the @planets array), it runs Planet
		# class' info method for that planet.
		@planets.each do |planet|
			planet.info
		end
	end

	def planet_query
		planet_data = {}
		keep_playing = true
		# As long as the player wants to keep playing, this while loop will run.
		while keep_playing == true
			puts "Which planet would you like information about?".bold
			# For each planet in the @planets array, the planet_data hash is populated with
			# the index+1 as the key, and the planet's name as the value.
			@planets.each_with_index do |planet, i|
				planet_data[i+1] = planet.name
			end
			# Each key and value is printed to the terminal
			planet_data.each do |key, value|
				puts "\t#{key}.".light_red.bold + " #{value}".light_red
			end
			print "\nWhat is your choice? (Please pick by number.) "
			# This while loop runs until the user's answer equals a key in the planet_data hash.
			while true
				answer = gets.chomp.to_i
				break if planet_data.keys.include?(answer)
				print "Invalid choice. Please choose again: ".bold
			end
			# The user's answer (a number) is set to the value matching the key.
			puts " "
			choice = planet_data[answer]
			# Iterates over @planets array. If a planet name equals the choice, then Planet's
			# info method is run.
			# NOTE: I chould probably use include? here, but I'm not sure how to run the info
			# method if I do this.
			@planets.each do |planet|
				if planet.name == choice
					planet.info
				end
			end
			print "Would you like information on another planet? (yes/no) "
			keep_playing = gets.chomp.downcase
			# Validates user entries. Until the user enters a valid response, the loop resets
			# the value of keep_playing to gets.chomp, and prompts the user to enter a valid
			# response.
			until keep_playing == "yes" || keep_playing == "y" || keep_playing == "n" || keep_playing == "no"
				print "Please enter yes or no: ".bold
				keep_playing = gets.chomp.downcase
			end

			# If the user enters "y" or "yes", keep_playing is reset to true, and the while loop
			# starts over again.
			if keep_playing == "y" || keep_playing == "yes"
				keep_playing = true
			# If the response is "n" or "no", keep_playing is set to false, and the loop ends.
			elsif keep_playing == "n" || keep_playing == "no"
				keep_playing = false
			end
		end
	end
end

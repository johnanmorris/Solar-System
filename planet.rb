class Planet
	attr_accessor :name, :mass, :radius, :type, :moons, :dist_from_sun

	def initialize(name, mass, radius, dist_from_sun, type, moons)
		@name = name
		@mass = mass
		@radius = radius
		@dist_from_sun = dist_from_sun
		@type = type
		@moons = moons
	end

	def info
		# A method for printing out planet data to the terminal.
		puts "Name: #{@name.red}"
		puts "Mass (relative to Earth): " + mass.to_s.red
		puts "Radius (relative to Earth): "+ @radius.to_s.red
		puts "Type: #{@type.red}"
		# If the @moons array is empty, then this puts statement is used.
		if @moons.length == 0
			puts "Moons: " + "none".red
		# If there is at least 1 item in the array, the @moons array is iterated
		# over with each to print each moon on its own indented (tabbed) line.
		else
			print "Moons:"
			@moons.each do |moon|
				puts "\t#{moon}".red
			end
		end
		puts "---".red
	end
end

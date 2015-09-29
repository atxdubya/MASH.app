class Car < ActiveRecord::Base

	#has_many :cars

	def self.show_cars(number)
		#offset = rand(Car.count)
		#@cars = Car.offset(offset).year
		#@cars = Car.year(:order => "RANDOM()")
		@cars = Car.order("RANDOM()").limit(number)
		#@cars = Car.all
		#return 'cars'
	end

end
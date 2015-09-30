class Car < ActiveRecord::Base

	#has_many :cars

	def self.show_cars(number)
		@cars = Car.order("RANDOM()").limit(number)
		#@cars = Car.order("RANDOM()").limit(number).values(params[:year], params[:make], params[:car_model])
	end

end
class Car < ActiveRecord::Base

	def show_cars(number)
		@cars = Cars.sample
	end

end
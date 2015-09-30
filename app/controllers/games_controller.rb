class GamesController < ApplicationController



	def index

		@cars = Car.show_cars 2
		@houses = House.show_houses 2
		@spouses = Spouse.show_spouses 2
		@gameboard = {Cars: @cars}, {Houses: @houses}, {Spouses: @spouses}

	end
end

input_name = cars[0], cars[2], cars[3]
params[.cars]

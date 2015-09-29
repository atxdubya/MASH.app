class GamesController < ApplicationController



	def index
		@cars = Car.show_cars 3
		@houses = House.show_houses 3
		@spouses = Spouse.show_spouses 3
	end
end

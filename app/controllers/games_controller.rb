class GamesController < ApplicationController



	def index
		@cars = Car.show_cars 2
		@houses = House.show_houses 2
		@spouses = Spouse.show_spouses 2
	end
end

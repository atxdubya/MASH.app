class GamesController < ApplicationController

	def index
		@cars = Car.show_cars 4
		@houses = House.show_houses 4
		@spouses = Spouse.show_spouses 4
	end

	def solveit
		@plight = Game.solveit(params)
		render :index
	end
end


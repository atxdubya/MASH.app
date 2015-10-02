class GamesController < ApplicationController



	def index

		@cars = Car.show_cars 4
		@houses = House.show_houses 4
		@spouses = Spouse.show_spouses 4

	end

 	def solveit # I think this will auto redirect_to /solveit if no option given,  sgd

 		@plight = Game.solveit(params)
 		# redirect_to '/games/'   #  option
 			render :index						#  option
 	end


end


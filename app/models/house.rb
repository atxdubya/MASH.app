class House < ActiveRecord::Base
	
	def show_houses(number)
		@houses = Houses.sample
	end
end
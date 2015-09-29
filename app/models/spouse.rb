class Spouse < ActiveRecord::Base

	def show_spouses(number)
		@spouses = Spouses.sample
	end
end

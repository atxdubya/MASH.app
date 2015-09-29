class House < ActiveRecord::Base

	has_many :houses
	
	def self.show_houses(number)
		@houses = House.order("RANDOM()").limit(number)
	end
end
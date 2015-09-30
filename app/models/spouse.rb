class Spouse < ActiveRecord::Base

	has_many :spouses

	def self.show_spouses(number)
		#@spouses = Spouses.sample
		#@spouse = Spouse.all
		@spouses = Spouse.order("RANDOM()").limit(number)
		#return 'spouses'
	end
end

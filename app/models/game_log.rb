class GameLog < ActiveRecord::Base
<<<<<<< HEAD
=======

	belongs_to :user

	def self.show_gamelogs()
			GameLog.all 
	end
>>>>>>> master
end

class GameLog < ActiveRecord::Base

	belongs_to :user

	def self.show_gamelogs()
			GameLog.all 
	end
end

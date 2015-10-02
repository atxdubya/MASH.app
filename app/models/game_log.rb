class GameLog < ActiveRecord::Base

	belongs_to :user

	def self.show_gamelogs()
			GameLog.all 
	end
	def self.user_gamelogs(user_id)
		GameLog.where(user_id: user_id)

	end
end

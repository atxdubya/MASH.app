class GameLogsController < ApplicationController
<<<<<<< HEAD
end
=======

	def index
		#@logs = GameLog.show_gamelogs
		@logs = current_user.game_logs
	end

	def show 
		#current_user.gamelogs 
	end 
end



>>>>>>> master

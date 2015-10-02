class GameLogsController < ApplicationController

	def index
		@bananas = GameLog.show_gamelogs
	end

	def show 
		#current_user.gamelogs 
	end 
end




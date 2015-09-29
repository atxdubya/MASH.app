class Game < ActiveRecord::Base

	belongs_to :user
	has_many :cars, :houses, :spouses

end

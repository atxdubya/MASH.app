class AddColumnsToGames < ActiveRecord::Migration
  def change
	  	add_column :games, :house, :string
	   	add_column :games, :car, :string
	    add_column :games, :spouse, :string
	    add_column :games, :user_id, :integer
	    add_foreign_key :games, :users
	end
end


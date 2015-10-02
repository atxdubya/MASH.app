class CreateGameLogs < ActiveRecord::Migration
  def change
    create_table :gamelogs do |t|
    	t.string :house
    	t.string :car
    	t.string :spouse
    	add_foreign_key :games, :users

      t.timestamps null: false
    end
    add_index :games, [:user_id, :created_at]
  end
end

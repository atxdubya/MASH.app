class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
    	t.string :house
    	t.string :car
    	t.string :spouse
    	t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :games, [:user_id, :created_at]
  end
end

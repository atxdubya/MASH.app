class CreateGamelogs < ActiveRecord::Migration
  def change
    create_table :gamelogs do |t|
    	t.string :house
    	t.string :car
    	t.string :spouse
    	t.references :user, index: true

      t.timestamps null: false
    end
  end
end

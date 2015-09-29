class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
    	t.string :style
    	t.string :theme

      t.timestamps null: false
    end
  end
end

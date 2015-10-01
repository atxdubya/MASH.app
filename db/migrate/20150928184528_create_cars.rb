class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    	t.string :name
    	t.string :theme

      t.timestamps null: false
    end
  end
end

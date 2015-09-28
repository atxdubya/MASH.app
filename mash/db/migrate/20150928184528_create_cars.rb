class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
    	t.string :make 
    	t.string :model
    	t.string :year
    	t.string :theme

      t.timestamps null: false
    end
  end
end

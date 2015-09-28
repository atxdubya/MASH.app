class CreateSpouses < ActiveRecord::Migration
  def change
    create_table :spouses do |t|
    	t.string :name
    	t.string :theme
    	t.string :gender

      t.timestamps null: false
    end
  end
end
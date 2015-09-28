class CreateSpouses < ActiveRecord::Migration
  def change
    create_table :spouses do |t|

      t.timestamps null: false
    end
  end
end

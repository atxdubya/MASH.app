class CreateGameLogs < ActiveRecord::Migration
  def change
    create_table :game_logs do |t|

      t.timestamps null: false
    end
  end
end

class CreateGameLevels < ActiveRecord::Migration
  def change
    create_table :game_levels do |t|
      t.string :name
      t.integer :level
      t.references :game, index: true

      t.timestamps
    end
  end
end

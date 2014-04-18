class CreateUserGameLevels < ActiveRecord::Migration
  def change
    create_table :user_game_levels do |t|
      t.references :user_game, index: true
      t.references :game_level, index: true
      t.references :motivator, index: true
      t.integer :x
      t.integer :y
      t.boolean :done

      t.timestamps
    end
  end
end

class CreateUserResults < ActiveRecord::Migration
  def change
    create_table :user_results do |t|
      t.references :user_game, index: true
      t.references :game_level, index: true
      t.references :motivator, index: true
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end

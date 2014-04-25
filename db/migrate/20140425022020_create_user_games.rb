class CreateUserGames < ActiveRecord::Migration
  def change
    create_table :user_games do |t|
      t.references :user, index: true
      t.references :game, index: true
      t.boolean :completed

      t.timestamps
    end
  end
end

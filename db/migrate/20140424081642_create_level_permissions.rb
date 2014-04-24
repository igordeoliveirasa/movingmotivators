class CreateLevelPermissions < ActiveRecord::Migration
  def change
    create_table :level_permissions do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end

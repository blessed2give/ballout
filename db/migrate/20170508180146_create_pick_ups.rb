class CreatePickUps < ActiveRecord::Migration
  def change
    create_table :pick_ups do |t|
      t.integer :player_count, default: 0
      t.datetime :time
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

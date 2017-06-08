class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.references :pick_up, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

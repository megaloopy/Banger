class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :type
      t.integer :odometer
      t.date :current_service
      t.float :price
      t.text :comments
      t.float :latitude
      t.float :longitude
      t.date :next_service

      t.timestamps null: false
    end
  end
end

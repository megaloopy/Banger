class CreateTires < ActiveRecord::Migration
  def change
    create_table :tires do |t|
      t.string :brand
      t.string :size
      t.boolean :front
      t.boolean :rear
      t.boolean :balance
      t.boolean :alignment
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

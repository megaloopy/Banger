class CreateOilChanges < ActiveRecord::Migration
  def change
    create_table :oil_changes do |t|
      t.boolean :filter
      t.string :oil_type

      t.timestamps null: false
    end
  end
end

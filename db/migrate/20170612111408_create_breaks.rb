class CreateBreaks < ActiveRecord::Migration
  def change
    create_table :breaks do |t|
      t.string :brand
      t.boolean :front
      t.boolean :rear
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

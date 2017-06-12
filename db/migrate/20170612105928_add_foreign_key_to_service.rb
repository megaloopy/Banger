class AddForeignKeyToService < ActiveRecord::Migration
  def change
    add_reference  :services, :vehicle, index: true, foreign_key: true
  end
end

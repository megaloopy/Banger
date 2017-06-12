class AddForeingKeyToOilChange < ActiveRecord::Migration
  def change
    add_reference :oil_changes, :service, index: true, foreign_key: true
  end
end

class RenameTypeInOilChange < ActiveRecord::Migration
  def change
    rename_column :oil_changes, :oil_type, :oil_brand
  end
end

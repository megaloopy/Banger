class RenameTypeInServiceTable < ActiveRecord::Migration
  def change
    rename_column :services, :type, :service_option
  end
end

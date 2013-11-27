class RenameColumnName < ActiveRecord::Migration
  def change
  	rename_column :challenges, :type, :description
  end
end

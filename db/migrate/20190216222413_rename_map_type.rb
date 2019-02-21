class RenameMapType < ActiveRecord::Migration[5.2]
  def change
    rename_column(:maps, :type, :map_type)
  end
end

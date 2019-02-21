class UpdateIcons < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:icons, :map, index: true)
    add_reference(:icons, :game, index: true)
  end
end

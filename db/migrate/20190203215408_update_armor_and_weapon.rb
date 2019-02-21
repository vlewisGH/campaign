class UpdateArmorAndWeapon < ActiveRecord::Migration[5.2]
  def change
    add_reference :weapons, :game, foreign_key: true
    add_reference :armors, :game, foreign_key: true
  end
end

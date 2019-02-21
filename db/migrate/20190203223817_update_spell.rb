class UpdateSpell < ActiveRecord::Migration[5.2]
  def change
    add_column :spells, :area_of_effect, :integer
    add_column :spells, :times_used, :integer
  end
end

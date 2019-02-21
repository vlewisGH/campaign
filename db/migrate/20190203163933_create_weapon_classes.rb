class CreateWeaponClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :weapon_classes do |t|
      t.string :name
      t.decimal :damage_modifier
      t.integer :reach
      t.decimal :weight_modifier
      t.boolean :two_handed
      t.references(:game, index: true)
      t.timestamps
    end
  end
end
